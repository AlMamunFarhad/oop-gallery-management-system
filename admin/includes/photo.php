<?php

class Photo extends Db_object
{

    protected static $db_table = "photos";
    protected static $db_table_fields = array('id', 'title', 'caption', 'alternate_text', 'description', 'filename', 'type', 'size', 'date');
    public $id;
    public $title;
    public $caption;
    public $alternate_text;
    public $description;
    public $filename;
    public $type;
    public $size;
    public $date;
    public $tmp_path;
    public $upload_directory = "images";
    public $errors = array();
    public $upload_errors_array = array(
        UPLOAD_ERR_OK           => "There is no error",
        UPLOAD_ERR_INI_SIZE        => "The uploaded file exceeds the upload_max_filesize directive in php.ini",
        UPLOAD_ERR_FORM_SIZE    => "The uploaded file exceeds the MAX_FILE_SIZE directive that was specified in the HTML form",
        UPLOAD_ERR_PARTIAL      => "The uploaded file was only partially uploaded.",
        UPLOAD_ERR_NO_FILE      => "No file was uploaded.",
        UPLOAD_ERR_NO_TMP_DIR   => "Missing a temporary folder.",
        UPLOAD_ERR_CANT_WRITE   => "Failed to write file to disk.",
        UPLOAD_ERR_EXTENSION    => "A PHP extension stopped the file upload."

    );
    // Check Upload errors 
    public function set_file($file)
    {
        if (empty($file) || !$file || !is_array($file)) {
            $this->errors[] = "There was no file uploaded here.";
            return false;
        } elseif ($file['error'] != 0) {
            $this->errors[] = $this->upload_errors_array[$file['error']];
            return false;
        } else {
            $this->filename = basename($file['name']);
            $this->tmp_path = $file['tmp_name'];
            $this->type     = $file['type'];
            $this->size     = $file['size'];
        }
    }
    // Display image path
    public function picture_path()
    {
        return $this->upload_directory . DS . $this->filename;
    }
    // Upload Method 
    public function img_save()
    {
        if ($this->id) {
            $this->update();
        } else {
            if (!empty($this->errors)) {
                return false;
            }
            if (empty($this->filename) || empty($this->tmp_path)) {
                $this->errors[] = "The file was not available.";
                return false;
            }
            $target_path = SITE_ROOT . DS . 'admin' . DS . $this->upload_directory . DS . $this->filename;
            if (file_exists($target_path)) {
                $this->errors[] = "The file {$this->filename} already exists.";
                return false;
            }
            if (move_uploaded_file($this->tmp_path, $target_path)) {
                if ($this->create()) {
                    unset($this->tmp_path);
                    return true;
                }
            } else {
                $this->errors[] = "The file directory probably dose not have permission.";
                return false;
            }
        }
    }
    // Photo delete method 
    public function delete_photo()
    {
        if ($this->delete()) {
            $target_path = SITE_ROOT . DS . 'admin' . DS . $this->picture_path();
            return unlink($target_path) ? true : false;
        } else {
            return false;
        }
    }
    // Sidebar Method 
    public static function display_sidebar_data($photo_id)
    {
        $photo = Photo::find_by_id($photo_id);
        $output = "<a href='#' class='thumbnail'><img width='500' src='{$photo->picture_path()}' style='border-radius: 5px'></a> ";
        $output .= "<p>Filename: {$photo->filename}</p>";
        $output .= "<p>Type: {$photo->type}</p>";
        $output .= "<p>Size: {$photo->size}</p>";
        echo $output;
    }
}
