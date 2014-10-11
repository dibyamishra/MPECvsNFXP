
clear 
close all
clf
ampl=[ ...
  200         7                  4         0.1932       ; ...
  300        10                  0            NaN       ; ...
  400        13                  0            NaN       ; ...
  500        16                  6         1.8001       ; ...
  600        19                  4         2.8476       ; ...
  700        22                  0            NaN       ; ...
  800        25                  1         4.1538       ; ...
  900        28                  3         4.2024       ; ...
 1000        31                  1         7.0088       ; ...
 1100        34                  1        20.3296       ; ...
 1200        37                  0            NaN       ; ...
 1300        40                  1        10.0789       ; ...
 1400        43                  0            NaN       ; ...
 1500        46                  1        72.1449       ; ...
 1600        49                  1        44.9466       ; ...
 2000        61                  1       203.4867       ; ...
];

nfxp=[...
 200      7       10         0.0199         2.0000         3.2000        36.0000        11.3000  ;...
 300      10      10         0.0359         2.1000         3.1000        36.4000        10.6000  ;...
 400      13      10         0.0520         3.1000         4.3000        66.4000        12.9000  ;...
 500      16      10         0.0618         2.4000         3.5000        47.2000        12.0000  ;...
 600      19      10         0.0931         2.4000         3.5000        47.8000        11.5000  ;...
 700      22      10         0.1092         2.9000         3.9000        55.6000        12.1000  ;...
 800      25      10         0.1521         2.8000         3.9000        57.4000        12.0000  ;...
 900      28      10         0.1895         2.4000         3.4000        45.2000        11.5000  ;...
1000      31      10         0.2080         1.9000         3.0000        34.8000        10.5000  ;...
1100      34      10         0.2596         1.9000         3.0000        36.0000        10.7000  ;...
1200      37      10         0.3030         1.8000         2.9000        31.2000        10.7000  ;...
1300      40      10         0.3954         1.9000         3.1000        37.0000        11.3000  ;...
1400      43      10         0.4499         2.0000         3.2000        38.2000        11.3000  ;...
1500      46      10         0.4708         1.7000         2.8000        31.8000        10.4000  ;...
1600      49      10         0.5325         1.7000         2.8000        32.8000        10.4000  ;...
1700      52      10         0.5658         1.4000         2.5000        26.2000         9.8000  ;...
1800      55      10         0.6539         1.4000         2.5000        25.0000         9.8000  ;...
1900      58      10         0.7282         1.4000         2.5000        25.4000         9.8000  ;...
2000      61      10         0.8130         1.4000         2.5000        25.4000         9.8000  ;...
2100      64      10         0.8987         1.4000         2.5000        25.6000         9.7000  ;...
 2200    67       10         1.0341         1.4000         2.5000        26.4000         9.8000 ; ...
 2300    70       10         1.1172         1.4000         2.5000        25.4000         9.8000 ; ...
 2400    73       10         1.2433         1.4000         2.5000        24.6000         9.7000 ; ...
 2500    76       10         1.3611         1.4000         2.5000        25.4000         9.8000 ; ...
 2600    79       10         1.5222         1.4000         2.5000        25.4000         9.8000 ; ...
 2700    81       10         1.6275         1.4000         2.5000        25.2000         9.8000 ; ...
 2800    84       10         1.9101         1.6000         2.8000        30.6000        10.4000 ; ...
 2900    87       10         2.1006         1.7000         2.9000        34.2000        10.6000 ; ...
 3000    90       10         2.2718         1.7000         2.9000        34.8000        10.6000 ; ...
 3100    93       10         2.3670         1.6000         2.8000        33.4000        10.4000 ; ...
 3200    96       10         2.5708         1.6000         2.8000        33.0000        10.4000 ; ...
 3300    99       10         2.8383         1.8000         3.0000        36.0000        10.8000 ; ...
 3400    102      10         3.0331         1.8000         3.0000        37.2000        10.8000 ; ...
 3500    105      10         3.2447         1.8000         3.0000        36.8000        10.8000 ; ...
 3600    108      10         3.4889         1.8000         3.0000        37.0000        10.8000 ; ...
 3700    111      10         3.7116         1.7000         3.0000        36.0000        10.8000 ; ...
 3800    114      10         3.9682         1.8000         3.0000        36.2000        10.8000 ; ...
 3900    117      10         4.2094         1.8000         3.0000        36.2000        10.8000 ; ...
 4000    120      10         4.4880         1.8000         3.0000        36.0000        10.8000 ; ...
 4100    123      10         4.8213         1.8000         3.0000        36.2000        10.8000 ; ...
 4200    126      10         5.3594         1.9000         3.1000        37.6000        11.0000 ; ...
 4300    129      10         5.3176         1.6000         2.8000        32.2000        10.4000 ; ...
 4400    132      10         5.5530         1.6000         2.8000        32.6000        10.4000 ; ...
 4500    135      10         5.8008         1.6000         2.8000        31.2000        10.4000 ; ...
 4600    138      10         6.3011         1.7000         2.9000        32.8000        10.6000 ; ...
 4700    141      10         6.5770         1.7000         2.9000        34.0000        10.6000 ; ...
 4800    144      10         6.5981         1.5000         2.7000        29.6000        10.2000 ; ...
 4900    146      10         7.1445         1.7000         2.9000        33.0000        10.6000 ; ...
 5000    149      10         7.2265         1.5000         2.7000        29.8000        10.2000 ; ...
];

N_ampl=ampl(:,1);
M_ampl=ampl(:,2);
cputime_ampl=ampl(:,4);

N_nfxp=nfxp(:,1);
M_nfxp=nfxp(:,2);
cputime_nfxp=nfxp(:,4);

[B_nfxp_polynomial,BINT,R,RINT,STATS_nfxp_polynomial]=regress(log(cputime_nfxp),[ones(numel(N_nfxp),1) log(N_nfxp)]);
[B_ampl_exponential,BINT,R,RINT,STATS_ampl_exponential]=regress(log(cputime_ampl),[ones(numel(N_ampl),1) N_ampl]);
[B_ampl_polynomial,BINT,R,RINT,STATS_ampl_polynomial]=regress(log(cputime_ampl),[ones(numel(N_ampl),1) log(N_ampl)]);
N=(200:10:5000)';

ms=4;
lw=2;
figure(1)
hold on
plot(N_ampl,log([cputime_ampl]), 'ok', 'LineWidth',lw, 'MarkerSize',ms);
set(gca,'FontSize',14);

hold on
plot(N,B_ampl_exponential(1)+B_ampl_exponential(2)*(N),'-k', 'LineWidth',lw, 'MarkerSize',ms);
hold on
plot(N,B_ampl_polynomial(1)+B_ampl_polynomial(2)*log(N),'--b', 'LineWidth',lw, 'MarkerSize',ms);

plot(N_nfxp,log([cputime_nfxp]), '*r', 'LineWidth',lw, 'MarkerSize',ms);
xlabel('Fixed Point Dimension, N');
ylabel('log(cpu time)');

hold on
plot(N,B_nfxp_polynomial(1)+B_nfxp_polynomial(2)*log(N), '-r', 'LineWidth',lw, 'MarkerSize',ms);
nfxp_polynomial_fit= sprintf('%8.1f + %8.2f*log(N)',B_nfxp_polynomial(1), B_nfxp_polynomial(2))
R2_nfxp_polynomial=STATS_nfxp_polynomial(1)
ampl_exponential_fit= sprintf('%8.2f + %8.6f*N',B_ampl_exponential(1), B_ampl_exponential(2))
R2_ampl_exponential=STATS_ampl_exponential(1)
ampl_polynomial_fit= sprintf('%8.1f + %8.2f*log(N)',B_ampl_polynomial(1), B_ampl_polynomial(2))
R2_ampl_polynomial=STATS_ampl_polynomial(1)
legend('MPEC-AMPL', 'Exponential', 'Polynomial', 'NFXP-NK', 'Polynomial', 'location',  'SouthEast');
legend('boxoff');
xlim([200 5000]);
ylim([-5 6]);


