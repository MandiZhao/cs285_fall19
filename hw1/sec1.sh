NUM_TRAIN=1000

# ITR=1
# ENV="Ant-v2"
# EXP_NAME="sect1_bc_ant"
# EPF="cs285/policies/experts/Ant.pkl"
# EPD="cs285/expert_data/expert_data_Ant-v2.pkl"

# python3 cs285/scripts/run_hw1_behavior_cloning.py --video_log_freq -1 -n ${ITR} \
#     --num_agent_train_steps_per_iter ${NUM_TRAIN} -epf ${EPF} -env ${ENV} -exp ${EXP_NAME} -ed ${EPD}

ENV="Hopper-v2"
EXP_NAME="sect1_bc_hopper"
EPF="cs285/policies/experts/Hopper.pkl"
EPD="cs285/expert_data/expert_data_Hopper-v2.pkl"

ITR=5
python3 cs285/scripts/run_hw1_behavior_cloning.py --video_log_freq -1 -n ${ITR} --do_dagger \
    --num_agent_train_steps_per_iter ${NUM_TRAIN} -epf ${EPF} -env ${ENV} -exp ${EXP_NAME} -ed ${EPD}
