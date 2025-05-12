<?php include("includes/header.php"); ?>
<?php if (!$session->is_signed_in()) {redirect("login.php");} ?>
<?php
// This page is for displaying comments on a specific photo
if (empty($_GET['id'])) {
    redirect("photos.php");
}
$comments = Comment::find_the_comments($_GET['id']);
?>
        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <?php include("includes/top_nav.php"); ?>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <?php include("includes/side_nav.php"); ?>
            <!-- /.navbar-collapse -->
        </nav>
        <div id="page-wrapper">
             <div class="container-fluid">
                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            users
                            <small><?php if(isset($_SESSION['username'])){echo $_SESSION['username'];}?> </small>
                        </h1>
            <p class="bg-success text-center"> <?php echo $session->message; ?></p>
                     <form action="" class="middle">
                         <!-- <a href="add_user.php" class="btn btn-primary">Add User</a> -->
                         <table class="table table-hover">
                              <thead>
                                  <tr>
                                      <th>Id</th>
                                      <th>Author</th>
                                      <th>Email</th>
                                      <th>Comments</th>
                                  </tr>
                              </thead>
                              <tbody>
                              <?php foreach ($comments as $comment): ?>
                                  <tr>
                                      <td class=""><?php echo $comment->id; ?></td>
                                      <td><?php echo $comment->author; ?>
                                          <div class="c-d-link">
                                              <a href="delete_comment.php?id=<?php echo $comment->id; ?>">Delete</a>
                                          </div>
                                      </td>
                                      <td><?php echo $comment->email; ?></td>
                                      <td><?php echo $comment->comment_body; ?>
                                      </td>
                                  </tr>
                              <?php endforeach; ?>
                              </tbody>
                          </table> 
                     </form>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
  <?php include("includes/footer.php"); ?>