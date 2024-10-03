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


You can also find all the models in our HuggingFace [collection](https://huggingface.co/collections/tartuNLP/llms-for-gec-66fd7a7eec3fb65796466612)

## Citation

````
@misc{luhtaru2024errhumanllamaslearn,
      title={To Err Is Human, but Llamas Can Learn It Too}, 
      author={Agnes Luhtaru and Taido Purason and Martin Vainikko and Maksym Del and Mark Fishel},
      year={2024},
      eprint={2403.05493},
      archivePrefix={arXiv},
      primaryClass={cs.CL},
      url={https://arxiv.org/abs/2403.05493}, 
}
````

## Acknowledgements
Code originally based on [github.com/TartuNLP/llammas](https://github.com/TartuNLP/llammas).


