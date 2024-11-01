python3 transformer_train.py --tokenizer "omnitokenizer" --num_workers 32 --progress_bar_refresh_rate 500 \
                        --num_nodes 2 --gpus 8 --sync_batchnorm --batch_size 4 --cond_stage_key label \
                        --base_lr 1e-3 --lr_min 1e-3 --warmup_steps 0 --warmup_lr_init 0. \
                        --vqvae "./ckpts_pub/imagenet_ucf.ckpt" \
                        --default_root_dir {PATH_TO_SAVE_RESULTS} \
                        --loader_type 'joint' --data_path {PATH_TO_DATA_DIR} --train_datalist './annotations/ucf_train.txt' --val_datalist './annotations/ucf_val.txt' \
                        --vocab_size 8192 --block_size 5121 --n_layer 24 --n_head 16 --n_embd 1536  \
                        --resolution 256 --sequence_length 17 --max_steps 4000000 --starts_with_sos --p_drop_cond 0.1 --fp16