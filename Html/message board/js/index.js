window.onload=function()
{
    var display_area = document.getElementById("display_area");
    var btn = document.getElementById("btn");
    btn.onclick = function()
    {
        var content_val = document.getElementById("content").value;
        display_area.append(content_val);
    };
}