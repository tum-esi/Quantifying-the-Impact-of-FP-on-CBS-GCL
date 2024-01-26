# Quantifying_the_Impact_of_FP_on_CBS_with_GCL
Quantifying the Impact of Frame Preemption on Combined TSN Shapers

# Reference
To cite our work, please use the following BibTex code:

```
@misc{debnath2024quantifying,
      title={Quantifying the Impact of Frame Preemption on Combined TSN Shapers}, 
      author={Rubi Debnath and Philipp Hortig and Luxi Zhao and Sebastian Steinhorst},
      year={2024},
      eprint={2401.13631},
      archivePrefix={arXiv},
      primaryClass={cs.NI}
}
```

You will find our paper here - arXiv preprint - https://arxiv.org/pdf/2401.13631.pdf 
Accepted for publication in IEEE NOMS/IM 2024. 

There are three folders - inet, testcase_configuration, resources.

The implemented code is inside the folder "inet". In the OMNeT++, import the "inet" as a library.

The test cases and results shown in the paper is inside the folder "testcase_configuration".
Both the synthetic and the realistic test cases are available. 

There are two folders in the in "testcase_configuration/testcases" -
1. CBS_TAS
2. TAS_CBS_FP

CBS_TAS folder contains the test cases for the CBS with GCL configuration.

TAS_CBS_FP folder contains the test cases for the FP with CBS with GCL configuration.

In this "resources" folder, we have kept the additional resources which we could not put in the paper due to space constraint.
The module architecture block diagram is inside this folder. 
