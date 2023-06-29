shot=5  # few-shot
gpu=0  # 显卡id
split=test  # 评估测试集
model_id=math15k_ft1b1   # 待评估的模型
task=ceval  # 任务名称：ceval
echo gpu_idx-${gpu}-${model_id}_${task}_${split}_${shot}-shot
nohup python  evaluate_zh.py --gpu_idx ${gpu} --model_id ${model_id} --task ${task} --shot ${shot} --split ${split} --show_detail  > ${model_id}_${task}_${split}_${shot}-shot_record.txt 2>&1 &
