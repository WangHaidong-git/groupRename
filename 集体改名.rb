# 这段是默认代码，您可以选择使用或删除。。。
mod = Sketchup.active_model # 打开模型
ent = mod.entities # 模型中的所有实体
sel = mod.selection # 当前选择
group_count=0
head_string=""
prompts=["前缀"]
defaults=["区域名"]
results=inputbox prompts,defaults
puts results.to_s
head_string=results[0].to_s

sel.each{|entity|
  if entity.is_a?Sketchup::Group
    group_count=group_count+1
    entity.name=head_string +group_count.to_s
  end
}
