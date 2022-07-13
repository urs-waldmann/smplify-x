for i in 5 # 1 2 3 4 6
do
    for cam in 2122725 # 2118670 2119571 2122201
    do
       cd /home/urs/Documents/data/openpose-subject-Urs/S3/Action-$i/imageSequence-undistorted/$cam
       python "/home/urs/Documents/code/smplify-x/smplifyx/main.py" --config "/home/urs/Documents/code/smplify-x/cfg_files/fit_smplh.yaml" --data_folder $PWD --output_folder $PWD/smplh_fits --model_folder "/home/urs/Documents/code/smplify-x/models" --vposer_ckpt "/home/urs/Documents/code/smplify-x/vposer"
    done
done

