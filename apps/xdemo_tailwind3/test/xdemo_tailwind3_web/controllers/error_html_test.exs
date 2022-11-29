defmodule XdemoTailwind3Web.ErrorHTMLTest do
  use XdemoTailwind3Web.ConnCase, async: true

  # Bring render_to_string/3 for testing custom views
  import Phoenix.Template

  test "renders 404.html" do
    assert render_to_string(XdemoTailwind3Web.ErrorHTML, "404", "html", []) == "Not Found"
  end

  test "renders 500.html" do
    assert render_to_string(XdemoTailwind3Web.ErrorHTML, "500", "html", []) == "Internal Server Error"
  end
end
