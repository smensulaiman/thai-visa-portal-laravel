<?php
$current_page = 'add_new';

// Include the header.php that handles the user session and initial HTML data
require_once 'header.php';

if (isset($_FILES['pdf_file'])) {
    print "<pre>";
    print_r($_FILES);
    print "</pre>";

    if (isset($_FILES["pdf_file"]) && $_FILES["pdf_file"]["error"] == 0) {
        $targetDir = "assets/uploads/";
        $fileName = time() . str_replace(' ', '_', basename($_FILES["pdf_file"]["name"]));
        $targetFile = $targetDir . $fileName;
        if (move_uploaded_file($_FILES["pdf_file"]["tmp_name"], $targetFile)) {
            $pdf_file = $fileName;
        }
    }
}
?>

<div class="container-fluid">
    <br><br>
    <h2 style="margin:0">Add New Application</h2>

    <?php if (!isset($pdf_file)) {?>

        <form action="" method="post" enctype="multipart/form-data">
            <div class="row p-2">
                <div class="col-md-3 pr-1">
                    <div class="form-element">
                        <label for="quantity">PDF File:</label>
                        <input type="file" class="app_field" id="pdf_file" name="pdf_file" required>
                        <button type="submit" class="btn btn-primary">Load</button>
                    </div>
                </div>
            </div>
        </form>

    <?php } else {
        $pdfFileWithPath = "assets/uploads/" . $pdf_file;

        if (!file_exists($pdfFileWithPath)) {
            die("PDF file does not exist: $pdfFileWithPath");
        }

        $pythonScriptPath = __DIR__ . '/pdf/main.py';
        $output = [];

        $command = "python " . escapeshellarg($pythonScriptPath) . " " . escapeshellarg($pdfFileWithPath) . " 2>&1";
        exec($command, $output, $status);

        if ($status === 0) {
            echo "Python script executed successfully.<br>";
            foreach ($output as $line) {
                if (!empty($line)) {
                    echo $line . "<br>";
                }
            }
        } else {
            echo $status;
            print_r($output);
            echo "<br>";
            echo "Error executing Python script.<br>";
            foreach ($output as $line) {
                echo $line . "<br>";
            }
        } ?>

        <form action="" method="post" enctype="multipart/form-data">
            <div class="row p-2">
                <div class="col-md-3 pr-1">
                    <div class="form-group">
                        <label for="app_field">Full name:</label>
                        <input type="text" class="form-control" id="full_name" name="full_name" required style="height:50px">
                    </div>
                </div>
                <div class="col-md-3 pr-1">
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="text" class="form-control" id="email" name="email" required style="height:50px">
                    </div>
                </div>
            </div>
            <div class="row p-2">
                <div class="col-md-3 pr-1">
                    <div class="form-group">
                        <label for="full-name">Phone:</label>
                        <input type="text" class="form-control" id="phone" name="phone" required style="height:50px">
                    </div>
                </div>
                <div class="col-md-3 pr-1">
                    <div class="form-group">
                        <label for="role">Reference no:</label>
                        <input type="text" class="form-control" id="reference" name="reference" required style="height:50px">
                    </div>
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>


            <table width="100%">
                <tr>
                    <td>Applicant name:</td>
                    <td>Travel doc no:</td>
                    <td>Nationality:</td>
                    <td>Type:</td>
                    <td>Amount:</td>
                </tr>

                <?php for ($i = 0; $i < 10; $i++) { ?>
                    <tr id="application_<?= $i ?>" style="display:none;">
                        <td>
                            <input type="text" class="person_field" style="width:170px;" id="name_<?= $i ?>" name="name[]">
                        </td>
                        <td>
                            <input type="text" class="person_field" style="width:130px;" id="doc_no_<?= $i ?>" name="doc_no[]">
                        </td>
                        <td>
                            <input type="text" class="person_field" style="width:100px;" id="nationality_<?= $i ?>" name="nationality[]" value="Bangladesh">
                        </td>
                        <td>
                            <input type="text" class="person_field" style="width:170px;" id="type_<?= $i ?>" name="type[]" value="Tourist Visa (single entry)">
                        </td>
                        <td>
                            <input type="text" class="person_field" style="width:80px;" id="amount_<?= $i ?>" name="amount[]" value="4000.00">
                        </td>

                    </tr>

                <?php } ?>
            </table>

            <br>
            <a onclick="add_applicant();"><img src="assets/img/add.jpg" style="width:110px; height:27px;"></a>
            <br><br><br><br>
            <button type="submit" name="submit" value="submit">Submit</button>

        </form>

        <?php
    }
    ?>

</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<script>
    function add_applicant() {
        for (var i = 0; i < 10; i++) {
            if (document.getElementById('application_' + i).style.display == 'none') {
                document.getElementById('application_' + i).style.display = 'table-row';
                break;
            }
        }
    }

    add_applicant();
    add_applicant();
    add_applicant();
    add_applicant();

</script>