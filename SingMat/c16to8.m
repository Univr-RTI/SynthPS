for i=1:3
    
    mkdir(['Object' num2str(i) '_8'])
    mkdir(['Object' num2str(i) '_8NLjpg'])
    mkdir(['Object' num2str(i) '_8NL'])
    mkdir(['Object' num2str(i) '_16Reconv'])

  for u=1:77
for k=1:9

     mkdir(['Object' num2str(i) '_8/material' num2str(k)])
    mkdir(['Object' num2str(i) '_8NLjpg/material' num2str(k)])
    mkdir(['Object' num2str(i) '_8NL/material' num2str(k)])
    mkdir(['Object' num2str(i) '_16Reconv/material' num2str(k)])
    
  fname = ['Object' num2str(i) '/material' num2str(k) '/image' num2str(u,'%02d') '.png']
  
  image=imread(fname);
   imf=im2double(image);
   
      oname = ['Object' num2str(i) '_8/material' num2str(k) '/image' num2str(u,'%02d') '.png']
    imwrite(imf,oname);
    
   img = imadjust(imf,[],[],1/2.2);
   oname = ['Object' num2str(i) '_8NL/material' num2str(k) '/image' num2str(u,'%02d') '.png']
    imwrite(img,oname);
    
    oname = ['Object' num2str(i) '_8NLjpg/material' num2str(k) '/image' num2str(u,'%02d') '.jpg']
    imwrite(img,oname);
    
    image= imread(oname);
     imf=im2double(image);
    img = imadjust(imf,[],[],2.2);
   oname = ['Object' num2str(i) '_16Reconv/material' num2str(k) '/image' num2str(u,'%02d') '.png']
    imwrite(img,oname,'fmt','png','BitDepth',16);
end
  end
end
