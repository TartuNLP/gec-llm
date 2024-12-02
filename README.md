# To Err Is Human, but Llamas Can Learn It Too
*Fine-tuning Llama for GEC*

This repository contains the fine-tuning, inference and data formating scripts for fine-tuning and continued-pretraining of Llama-2 for GEC.

See [scripts/gec](./scripts/training) for example scripts.


## Models
Models for GEC trained on 1M Llama-generated errors, then gold errors:
* Estonian: [tartuNLP/Llammas-base-p1-llama-errors-p2-GEC](https://huggingface.co/tartuNLP/Llammas-base-p1-llama-errors-p2-GEC)
* Ukrainian: [tartuNLP/Llamma-2-7b-ukr-p1-llama-errors-p2-GEC](https://huggingface.co/tartuNLP/Llamma-2-7b-ukr-p1-llama-errors-p2-GEC)
* German: [tartuNLP/leo-hessianai-7b-p1-llama-errors-p2-GEC](https://huggingface.co/tartuNLP/leo-hessianai-7b-p1-llama-errors-p2-GEC)

Models for AEG (artificial error generation):
* Estonian: [tartuNLP/Llammas-base-AEG](https://huggingface.co/tartuNLP/Llammas-base-AEG)
* Ukrainian: [tartuNLP/Llamma-2-7b-ukr-AEG](https://huggingface.co/tartuNLP/Llamma-2-7b-ukr-AEG)
* German: [tartuNLP/leo-hessianai-7b-AEG](https://huggingface.co/tartuNLP/leo-hessianai-7b-AEG)

Synthetic data generated with AEG models: [tartuNLP/aeg-data](https://huggingface.co/datasets/tartuNLP/aeg-data).

You can also find all the models in our HuggingFace [collection](https://huggingface.co/collections/tartuNLP/llms-for-gec-66fd7a7eec3fb65796466612)

## Data format
GEC and AEG instructions (part of the input prompt) are in [gec_instructions.json](scripts/gec/gec_instructions.json)
and [aeg_instructions.json](scripts/gec/aeg_instructions.json) respectively. These are formated into a simplified
Alpaca prompt format ([alpaca_prompt_simple.json](scripts/gec/alpaca_prompt_simple.json)) during 
training ([finetune.py](finetune.py))
and inference ([batch_instruction_inference.py](batch_instruction_inference.py)).

Example script for formating data into instructions: [gec_to_instruction.py](scripts/gec/gec_to_instruction.py).

Prompts with instructions added (only need to add input sentence): [gec_prompts.json](scripts/gec/gec_prompts.json)
and [aeg_prompts.json](scripts/gec/aeg_prompts.json).

## Citation

````
@inproceedings{luhtaru-etal-2024-err,
    title = "To Err Is Human, but Llamas Can Learn It Too",
    author = "Luhtaru, Agnes  and
      Purason, Taido  and
      Vainikko, Martin  and
      Del, Maksym  and
      Fishel, Mark",
    editor = "Al-Onaizan, Yaser  and
      Bansal, Mohit  and
      Chen, Yun-Nung",
    booktitle = "Findings of the Association for Computational Linguistics: EMNLP 2024",
    month = nov,
    year = "2024",
    address = "Miami, Florida, USA",
    publisher = "Association for Computational Linguistics",
    url = "https://aclanthology.org/2024.findings-emnlp.727",
    doi = "10.18653/v1/2024.findings-emnlp.727",
    pages = "12466--12481",
    abstract = "This study explores enhancing grammatical error correction (GEC) through automatic error generation (AEG) using language models (LMs). Specifically, we fine-tune Llama 2 LMs for error generation and find that this approach yields synthetic errors akin to human errors. Next, we train GEC Llama models using these artificial errors and outperform previous state-of-the-art error correction models, with gains ranging between 0.8 and 6 F0.5 points across all tested languages (German, Ukrainian, and Estonian). Moreover, we demonstrate that generating errors by fine-tuning smaller sequence-to-sequence models and prompting large commercial LMs (GPT3.5 and GPT4) also results in synthetic errors beneficially affecting error generation models. We openly release trained models for error generation and correction as well as all the synthesized error datasets for the covered languages.",
}
````

## Acknowledgements
Code originally based on [github.com/TartuNLP/llammas](https://github.com/TartuNLP/llammas).


