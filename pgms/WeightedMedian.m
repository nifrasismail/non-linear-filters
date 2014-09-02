function [W] = WeightedMedian(I,H)
if length(size(I)) == 3
    I=rgb2gray(I);
end

[row,col] = size(I);
W=zeros(row,col);


for x=2:row-1
    for y=2:col-1
        M2=[];
        for i=-1:1
            for j=-1:1
                a=I(x+i,y+j);
                p=H(i+2,j+2);
                for k=1:p
                    M2=[M2 a];
                end
            end
        end
        a=median(M2);
        W(x,y)=a;
    end
end
W=uint8(W);



