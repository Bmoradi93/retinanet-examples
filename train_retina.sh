#!/bin/sh

odtk train model_mydataset.pth --backbone ResNet50FPN \
    --fine-tune /root/retinanet-examples/backbone/retinanet_rn50fpn/retinanet_rn50fpn.pth \
    --classes 1 --iters 20000 --val-iters 1000 --lr 0.0005 \
    --resize 512 --jitter 480 640 --images /root/retinanet-examples/data/object_handover/OBJ2022/xml_annotations/train \
    --annotations /root/retinanet-examples/data/object_handover/OBJ2022/train.json --val-annotations /root/retinanet-examples/data/object_handover/OBJ2022/test.json
