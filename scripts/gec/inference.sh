SCRIPT_DIR=# Root of this repo
MODEL_PATH=# Path to the model
INPUT_PATH=# Path to the input file

python -u ${SCRIPT_DIR}/batch_instruction_inference.py \
    --tokenizer_name meta-llama/Llama-2-7b-hf \
    --model_name ${MODEL_PATH} \
    --alpaca_prompt_format_path alpaca_prompt_simple.json \
    --prompt_file ${INPUT_PATH} \
    --input_format alpaca \
    --output_file output.txt \
    --full_output_file output.json \
    --num_beams 4 \
    --batch_size 8 \
    --bf16 \
    --max_new_tokens 300 \
    --do_sample False \
    --compile_model