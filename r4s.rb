#-*- coding: utf-8 -*-

Plugin.create(:r4s) do
  command(:r4s,
    name: 'r4s',
    description: '(ﾟ∀ﾟ)o彡゜スパブロ!スパブロ!',
    condition: lambda{|x| true},
    visible: true,
    role: :timeline) do |opt|
    opt.messages.each do |m|
      (Service.primary.twitter/'users/report_spam').json(:screen_name => m.user.idname)
    end
  end
end
