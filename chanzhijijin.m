[t]=xlsread('rgb.xlsx',1,'U1:U750');
[br]=xlsread('rgb.xlsx',1,'V1:V750');
[bg]=xlsread('rgb.xlsx',1,'W1:W750');
[bb]=xlsread('rgb.xlsx',1,'X1:X750');
sumb = br + bg + bb;
[gr]=xlsread('rgb.xlsx',1,'Z1:Z750');
[gg]=xlsread('rgb.xlsx',1,'AA1:AA750');
[gb]=xlsread('rgb.xlsx',1,'AB1:AB750');
sumg = gr + gg + gb;
[yr]=xlsread('rgb.xlsx',1,'AD1:AD750');
[yg]=xlsread('rgb.xlsx',1,'AE1:AE750');
[yb]=xlsread('rgb.xlsx',1,'AF1:AF750');
sumy = yr + yg + yb;
[rr]=xlsread('rgb.xlsx',1,'AH1:AH750');
[rg]=xlsread('rgb.xlsx',1,'AI1:AI750');
[rb]=xlsread('rgb.xlsx',1,'AJ1:AJ750');
sumr = rr + rg + rb;
timeSpace = 10;
j = 1;

for i = 1 : 750 - 25 * timeSpace
    cb(j) = max(sumb(i : i + 25 * timeSpace)) - min(sumb(i : i + 25 * timeSpace));
    
    cg(j) = max(sumg(i : i + 25 * timeSpace)) - min(sumg(i : i + 25 * timeSpace));
    
    cy(j) = max(sumy(i : i + 25 * timeSpace)) - min(sumy(i : i + 25 * timeSpace));
    
    cr(j) = max(sumr(i : i + 25 * timeSpace)) - min(sumr(i : i + 25 * timeSpace));
    
    j = j + 1;
end

cmaxb = max(sumb) - min(sumb);
cmaxg = max(sumg) - min(sumg);
cmaxy = max(sumy) - min(sumy);
cmaxr = max(sumr) - min(sumr);
cpb = cb ./ cmaxb .* 100;
cpb = cpb.';
cpg = cg ./ cmaxg .* 100;
cpg = cpg.';
cpy = cy ./ cmaxy .* 100;
cpy = cpy.';
cpr = cr ./ cmaxr .* 100;
cpr = cpr.';
%+++++
plot(cpb,'b');
hold on
plot(cpg,'g');
hold on
plot(cpy,'y');
hold on
plot(cpr,'r');
