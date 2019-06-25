#!/usr/bin/env ruby

require 'json'

basedir = File.expand_path('../../files/assets/Common/SRPG/Skill', __FILE__)
skills = Dir.glob(File.join(basedir, '*.json')).flat_map do |fname|
  JSON.parse(IO.read(fname), symbolize_names: true).map {|v| [v[:id_tag], v]}
end.to_h
blank = skills.delete('SID_無し')

skills = skills.values
skills.sort_by! {|v| v[:id_tag]}

skills.each do |s|
  s.each do |k, v|
    s.delete(k) if v == blank[k]
  end
end

puts JSON.pretty_generate(skills)
