function [M] = MinFilter(I,str)
if length(size(I)) == 3
    I=rgb2gray(I);
end

[row,col] = size(I);
M=zeros(row,col);


for x=2:row-1
    for y=2:col-1
        M2=[];
        for i=-1:1
            for j=-1:1
                a=I(x+i,y+j);
                M2=[M2 a];
            end
        end
        if strcmp(str,'Min')
            a=min(M2);
        end
        
        if strcmp(str,'Max')
            a=max(M2);
        end
        
        if strcmp(str,'Median')
            a=median(M2);
        end
        M(x,y)=a;
    end
end
M=uint8(M);



