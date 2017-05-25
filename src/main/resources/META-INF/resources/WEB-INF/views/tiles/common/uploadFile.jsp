<!DOCTYPE html>
<html>

<head>
    <!-- JQuery import -->
    <script type="text/javascript" src="/static/js/jquery-3.1.0.js"></script>
    <script type="text/javascript" src="/static/js/jquery-3.1.0.min.js"></script>
</head>

<body>

<!-- Upload file form -->
<form id="upload-file-form">
    <label for="upload-file-input">Upload your file:</label>
    <input id="upload-file-input" type="file" name="uploadfile" accept="*" />
    <br />
    <span id="upload-file-message"></span>
</form>
<br />
<hr />
Proudly handcrafted by
<a href='http://netgloo.com/en'>Netgloo</a> :)

<!-- Javascript functions -->
<script>

    // bind the on-change event for the input element (triggered when a file
    // is chosen)
    $(document).ready(function() {
        $("#upload-file-input").on("change", uploadFile);
    });

    /**
     * Upload the file sending it via Ajax at the Spring Boot server.
     */
    function uploadFile() {
        $.ajax({
            url: "/uploadFile",
            type: "POST",
            data: new FormData($("#upload-file-form")[0]),
            enctype: 'multipart/form-data',
            processData: false,
            contentType: false,
            cache: false,
            success: function () {
                // Handle upload success
                $("#upload-file-message").text("File succesfully uploaded");
            },
            error: function () {
                // Handle upload error
                $("#upload-file-message").text(
                        "File not uploaded (perhaps it's too much big)");
            }
        });
    } // function uploadFile
</script>

</body>

</html>