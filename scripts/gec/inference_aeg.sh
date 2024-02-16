SCRIPT_DIR=# Root of this repo
MODEL_PATH=# Path to the model
INPUT_PATH=# Path to the input file

python -u ${SCRIPT_DIR}/batch_instruction_inference.py \
    --tokenizer_name meta-llama/Llama-2-7b-hf \
    --model_name ${MODEL_PATH} \
    --alpaca_prompt_format_path alpaca_prompt_simple.json \
    --prompt_file ${INPUT_PATH} \
    --input_format alpaca \
    --output_file output_aeg.txt \
    --full_output_file output_aeg.json \
    --num_beams 1 \
    --top_k 50 \
    --batch_size 48 \
    --bf16 \
    --max_new_tokens 300 \
    --do_sample True \
    --temperature "1.0" \
    --compile_model