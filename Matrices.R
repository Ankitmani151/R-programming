#Three ways to create matrix Matrix(),cbind(),rbind()
#1. Matrix
my.data<- 1:20
my.data

A<-matrix(my.data,4,5)
A
#output
#######[,1] [,2] [,3] [,4] [,5]
#[1,]    1    5    9   13   17
#[2,]    2    6   10   14   18
#[3,]    3    7   11   15   19
#[4,]    4    8   12   16   20

#finding a particular value from matrix
A[2,3] #output [1] 10

#value is getting filled by row
B<-matrix(my.data,4,5,byrow = T)
B
#output
######[,1] [,2] [,3] [,4] [,5]
#[1,]    1    2    3    4    5
#[2,]    6    7    8    9   10
#[3,]   11   12   13   14   15
#[4,]   16   17   18   19   20
B[2,5] #output[1] 10
#--------------------------------------#
#rbind()
r1<-c("I","am","happy")
r2<-c("what","a","day")
r3<-c(1,2,3)
C<-rbind(r1,r2,r3)
C
###[,1]   [,2] [,3]   
#r1 "I"    "am" "happy"
#r2 "what" "a"  "day"  
#r3 "1"    "2"  "3"  

#--------------------------------------#
#cbind()
c1<-1:5
c2<- -1:-5
D<-cbind(c1,c2)
D

#output
#####c1 c2
#[1,]  1 -1
#[2,]  2 -2
#[3,]  3 -3
#[4,]  4 -4
#[5,]  5 -5




#######################matrix operation#################################
> Games
               2005 2006 2007 2008 2009 2010 2011 2012 2013 2014
KobeBryant       80   77   82   82   73   82   58   78    6   35
JoeJohnson       82   57   82   79   76   72   60   72   79   80
LeBronJames      79   78   75   81   76   79   62   76   77   69
CarmeloAnthony   80   65   77   66   69   77   55   67   77   40
DwightHoward     82   82   82   79   82   78   54   76   71   41
ChrisBosh        70   69   67   77   70   77   57   74   79   44
ChrisPaul        78   64   80   78   45   80   60   70   62   82
KevinDurant      35   35   80   74   82   78   66   81   81   27
DerrickRose      40   40   40   81   78   81   39    0   10   51
DwayneWade       75   51   51   79   77   76   49   69   54   62
> Games["LeBronJames","2012"]   #output [1] 76
[1] 76
> 
> #how to find average field goals
> FieldGoals
               2005 2006 2007 2008 2009 2010 2011 2012 2013 2014
KobeBryant      978  813  775  800  716  740  574  738   31  266
JoeJohnson      632  536  647  620  635  514  423  445  462  446
LeBronJames     875  772  794  789  768  758  621  765  767  624
CarmeloAnthony  756  691  728  535  688  684  441  669  743  358
DwightHoward    468  526  583  560  510  619  416  470  473  251
ChrisBosh       549  543  507  615  600  524  393  485  492  343
ChrisPaul       407  381  630  631  314  430  425  412  406  568
KevinDurant     306  306  587  661  794  711  643  731  849  238
DerrickRose     208  208  208  574  672  711  302    0   58  338
DwayneWade      699  472  439  854  719  692  416  569  415  509
> round(FieldGoals/Games,1)
               2005 2006 2007 2008 2009 2010 2011 2012 2013 2014
KobeBryant     12.2 10.6  9.5  9.8  9.8  9.0  9.9  9.5  5.2  7.6
JoeJohnson      7.7  9.4  7.9  7.8  8.4  7.1  7.0  6.2  5.8  5.6
LeBronJames    11.1  9.9 10.6  9.7 10.1  9.6 10.0 10.1 10.0  9.0
CarmeloAnthony  9.4 10.6  9.5  8.1 10.0  8.9  8.0 10.0  9.6  8.9
DwightHoward    5.7  6.4  7.1  7.1  6.2  7.9  7.7  6.2  6.7  6.1
ChrisBosh       7.8  7.9  7.6  8.0  8.6  6.8  6.9  6.6  6.2  7.8
ChrisPaul       5.2  6.0  7.9  8.1  7.0  5.4  7.1  5.9  6.5  6.9
KevinDurant     8.7  8.7  7.3  8.9  9.7  9.1  9.7  9.0 10.5  8.8
DerrickRose     5.2  5.2  5.2  7.1  8.6  8.8  7.7  NaN  5.8  6.6
DwayneWade      9.3  9.3  8.6 10.8  9.3  9.1  8.5  8.2  7.7  8.2
> 
> #how many minutes each player played
> round(MinutesPlayed/Games)
               2005 2006 2007 2008 2009 2010 2011 2012 2013 2014
KobeBryant       41   41   39   36   39   34   38   39   30   34
JoeJohnson       41   41   41   40   38   35   35   37   33   35
LeBronJames      43   41   40   38   39   39   38   38   38   36
CarmeloAnthony   37   38   36   34   38   36   34   37   39   36
DwightHoward     37   37   38   36   35   38   38   36   34   30
ChrisBosh        39   39   36   38   36   36   35   33   32   35
ChrisPaul        36   37   38   38   38   36   36   33   35   35
KevinDurant      36   36   35   39   40   39   39   39   39   34
DerrickRose      29   29   29   37   37   37   35  NaN   31   30
DwayneWade       39   38   38   39   36   37   33   35   33   32
> 
# Average Salary
> Salary/NROW(Seasons)
                  2005      2006      2007      2008    2009      2010      2011    2012    2013    2014
KobeBryant     1594688 1771875.0 1949062.5 2126250.0 2303438 2480625.0 2524449.3 2784915 3045381 2350000
JoeJohnson     1200000 1274418.9 1348837.7 1423256.7 1497675 1632450.0 1803857.3 1975265 2146672 2318079
LeBronJames     462180  582809.0 1304125.0 1441058.1 1577991 1450000.0 1602250.0 1754500 1906750 2064440
CarmeloAnthony  371364  469404.1 1304125.0 1441058.1 1577991 1714924.3 1851857.4 1945000 2240747 2245800
DwightHoward    449316  480672.0  606127.4 1375800.0 1520259 1664718.0 1809177.0 1953636 2051318 2143627
ChrisBosh       334800  423522.0 1245500.0 1441058.1 1577991 1450000.0 1602250.0 1754500 1906750 2064440
ChrisPaul       314424  338016.0  361596.0  457418.9 1352050 1494015.3 1635980.5 1777946 1866843 2006856
KevinDurant          0       0.0  417120.0  448404.0  479688  605366.3 1550663.2 1666963 1783263 1899562
DerrickRose          0       0.0       0.0  482280.0  518448  554616.0  699370.8 1640250 1763269 1886288
DwayneWade      303192  384144.3 1304125.0 1441058.1 1577991 1420000.0 1569100.0 1718200 1867300 1500000
>




############################Subnetting#############################
> x<-c("a","b","c","d","e")
> x
[1] "a" "b" "c" "d" "e"
> x[c(1,5)]
[1] "a" "e"
> x[1]
[1] "a"
> 
> Games
               2005 2006 2007 2008 2009 2010 2011 2012 2013 2014
KobeBryant       80   77   82   82   73   82   58   78    6   35
JoeJohnson       82   57   82   79   76   72   60   72   79   80
LeBronJames      79   78   75   81   76   79   62   76   77   69
CarmeloAnthony   80   65   77   66   69   77   55   67   77   40
DwightHoward     82   82   82   79   82   78   54   76   71   41
ChrisBosh        70   69   67   77   70   77   57   74   79   44
ChrisPaul        78   64   80   78   45   80   60   70   62   82
KevinDurant      35   35   80   74   82   78   66   81   81   27
DerrickRose      40   40   40   81   78   81   39    0   10   51
DwayneWade       75   51   51   79   77   76   49   69   54   62
> Games[1:3,6:10]
            2010 2011 2012 2013 2014
KobeBryant    82   58   78    6   35
JoeJohnson    72   60   72   79   80
LeBronJames   79   62   76   77   69
> #Comparing players
> Games[c(1,10),]
           2005 2006 2007 2008 2009 2010 2011 2012 2013 2014
KobeBryant   80   77   82   82   73   82   58   78    6   35
DwayneWade   75   51   51   79   77   76   49   69   54   62
> #Analysing last two years
> Games[,c("2008","2009")]
               2008 2009
KobeBryant       82   73
JoeJohnson       79   76
LeBronJames      81   76
CarmeloAnthony   66   69
DwightHoward     79   82
ChrisBosh        77   70
ChrisPaul        78   45
KevinDurant      74   82
DerrickRose      81   78
DwayneWade       79   77
> 
> #extracting any particular player withot dropping dimension
> Games[1,,drop=FALSE] # if we use Games [1,] Dimesions will be dropped
           2005 2006 2007 2008 2009 2010 2011 2012 2013 2014
KobeBryant   80   77   82   82   73   82   58   78    6   35
> 
