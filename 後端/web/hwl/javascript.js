    <script>
        var i, j, k;
        for (i = 0; i < 5; i++) {
            for (j = 0; j < 5 - i; j++) {
                document.write(" ");
            }
            for (k = 0; k < i + 1; k++) {
                document.write("*");
            }
            document.write("<br/>");
        }
        document.write("<br/>");
        for (i = 0; i < 5; i++) {
            for (j = 0; j < 5 - i; j++) {
                document.write("&nbsp;");
            }
            for (k = 0; k < 2 + i * 2; k += 2) {
                document.write("*");
            }
            document.write("<br/>");
        }
        document.write("<br/>");
        for (i = 0; i < 5; i++) {
            for (j = 0; j < 5 - i; j++) {
                document.write("&nbsp;");
            }
            for (k = 0; k < 2 + i * 2; k += 2) {
                document.write("*");
            }
            document.write("<br/>");
        }
        for (i = 0; i < 5; i++) {
            for (j = 0; j < i + 2; j++) {
                document.write("&nbsp;");
            }
            for (k = 0; k < 4 - i; k++) {
                document.write("*");
            }
            document.write("<br/>");
        }
    </script>