#-*- coding: utf-8 -*-

# Copyright 2013-2014, pocke
# Licensed MIT
# http://opensource.org/licenses/mit-license.php

Plugin.create(:r4s) do
  command(
    :r4s,
    name: 'r4s',
    description: 'r4s',
    condition: lambda{|x| true},
    visible: true,
    role: :timeline
  ) do |opt|
    opt.messages.each do |m|
      (Service.primary.twitter/'users/report_spam').json(screen_name: m.user.idname)
    end
  end
end
