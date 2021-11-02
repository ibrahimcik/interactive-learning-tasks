USER=`grep  -A5 '"aws_iam_user"' -m 1 /home/ec2-user/interactive-learning-tasks/iam/iam.tf|grep name|awk '{print $3}'|sed "s/\"//g"`
  if [[ $USER == [bB]ob ]] 2>/dev/null;
  then
    echo " 9) ${g}User ${y}$USER${g} is created${rs}."
    sleep 0.2s
  else
    echo " 9) ${r}User ${y}bob${r} isn't created, please try again${rs}."
    sleep 0.2s
  fi