TASK_SEQS = {
    "CW10": [
        "window-close-v2",
        "door-close-v2",
        "push-wall-v2", # "push-wall-v2" "peg-unplug-side-v2"
        "faucet-open-v2",
        "faucet-close-v2",
        "handle-press-side-v2",
        "handle-press-v2",
        "plate-slide-v2",
        "reach-wall-v2",
        "reach-v2",
    ],
}

TASK_SEQS["CW20"] = TASK_SEQS["CW10"] + TASK_SEQS["CW10"]
