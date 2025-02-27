python train.py \
    --model_path "bigcode/starcoderbase-3b" \
    --dataset_name "smangrul/hf-stack-v1" \
    --subset "data" \
    --data_column "content" \
    --split "train" \
    --seq_length 2048 \
    --max_steps 2000 \
    --batch_size 4 \
    --gradient_accumulation_steps 4 \
    --learning_rate 5e-4 \
    --lr_scheduler_type "cosine" \
    --weight_decay 0.01 \
    --num_warmup_steps 30 \
    --eval_freq 100 \
    --save_freq 100 \
    --log_freq 25 \
    --num_workers 4 \
    --bf16 \
    --no_fp16 \
    --output_dir "peft-lora-replit-code-v1-5-3b-personal-copilot" \
    --fim_rate 0.5 \
    --fim_spm_rate 0.5 \
    --use_flash_attn \
    --use_peft_lora \
    --lora_r 32 \
    --lora_alpha 64 \
    --lora_dropout 0.0 \
    --lora_target_modules "c_proj,c_attn,q_attn,c_fc,c_proj" \
    --use_4bit_qunatization \
    --use_nested_quant \
    --bnb_4bit_compute_dtype "bfloat16"