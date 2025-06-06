    <?php include("includes/header.php"); ?>
    <?php if (!$session->is_signed_in()) {
        redirect("login.php");
    } ?>
    <?php $comments = Comment::find_all(); ?>
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
                        <small><?php if (isset($_SESSION['username'])) {
                                    echo $_SESSION['username'];
                                } ?> </small>
                    </h1>
                    <p class="bg-success text-center"> <?php echo $session->message; ?></p>
                    <form action="" class="middle">
                        <!-- <a href="add_user.php" class="btn btn-primary">Add User</a> -->
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Comment Post Id</th>
                                    <th>Author</th>
                                    <th>Comments</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($comments as $comment): ?>
                                    <tr>
                                        <td class=""><?php echo $comment->id; ?></td>
                                        <td>
                                            <a href="../photo.php?id=<?php echo $comment->photo_id; ?>">
                                                Comment Post id
                                            </a>
                                        </td>
                                        <td><?php echo $comment->author; ?></td>
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