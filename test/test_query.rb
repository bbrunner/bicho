require File.join(File.dirname(__FILE__), 'helper')

class Query_test < Test::Unit::TestCase

  def test_active_record_style
    # No client set yet
    assert_raise RuntimeError do
      Bicho::Bug.where.assigned_to("foo@bar.com").each do |bug|
        puts bug
      end
    end

    Bicho.client = Bicho::Client.new('https://bugzilla.gnome.org')

    ret  = Bicho::Bug.where.product("vala").status("resolved").component("Basic Types").each.to_a
    assert ret.collect(&:id).include?(645150)

  end

end
