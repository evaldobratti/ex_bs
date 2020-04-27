defmodule ExBs.Components.FormTest do
  use ExUnit.Case

  import ExBs.Test.Helpers, only: [assert_safe: 2]

  alias ExBs.Components.Form

  describe "form_row" do
    test "generates a form row component" do
      expected = ~s(<div class="form-row">...</div>)

      result = Form.form_row("...")

      assert_safe(result, expected)
    end
  end

  describe "form_group" do
    test "generates a form group component" do
      expected = ~s(<div class="form-group">...</div>)

      result = Form.form_group("...")

      assert_safe(result, expected)
    end

    test "accepts a row option" do
      expected = ~s(<div class="form-group row">...</div>)

      result = Form.form_group("...", row: true)

      assert_safe(result, expected)
    end

    test "accepts responsive options" do
      expected = ~s(<div class="form-group col-md-6">...</div>)

      result = Form.form_group("...", col_md: 6)

      assert_safe(result, expected)
    end
  end

  describe "form_text" do
    test "generates a form text component" do
      expected = ~s(<small class="form-text">...</small>)

      result = Form.form_text("...")

      assert_safe(result, expected)
    end
  end

  describe "form_check" do
    test "generates a form check component" do
      expected = ~s(<div class="form-check">...</div>)

      result = Form.form_check("...")

      assert_safe(result, expected)
    end

    test "with inline variant" do
      expected = ~s(<div class="form-check form-check-inline">...</div>)

      result = Form.form_check(:inline, "...")

      assert_safe(result, expected)
    end
  end

  describe "input_group_prepend" do
    test "generates an input group prepend component" do
      expected = ~s(<div class="input-group-prepend"><div class="input-group-text">...</div></div>)

      result = Form.input_group_prepend("...")

      assert_safe(result, expected)
    end
  end

  describe "valid_feedback" do
    test "generates a valid feedback component" do
      expected = ~s(<div class="valid-feedback">...</div>)

      result = Form.valid_feedback("...")

      assert_safe(result, expected)
    end
  end

  describe "invalid_feedback" do
    test "generates an invalid feedback component" do
      expected = ~s(<div class="invalid-feedback">...</div>)

      result = Form.invalid_feedback("...")

      assert_safe(result, expected)
    end
  end
end