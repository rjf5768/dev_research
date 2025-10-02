; ModuleID = './bftest.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/security-blowfish/bftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

@.str = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Who is John Galt?\00", align 1
@bf_key = dso_local global [2 x i8*] [i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)], align 16
@bf_plain = dso_local global [2 x [2 x i64]] [[2 x i64] [i64 1112297303, i64 1179210568], [2 x i64] [i64 4275878552, i64 1985229328]], align 16
@bf_cipher = dso_local global [2 x [2 x i64]] [[2 x i64] [i64 844026110, i64 4094927363], [2 x i64] [i64 3432084267, i64 2149774980]], align 16
@key_test = dso_local global [25 x i8] c"\F0\E1\D2\C3\B4\A5\96\87xiZK<-\1E\0F\00\11\223DUfw\88", align 16
@key_data = dso_local global [8 x i8] c"\FE\DC\BA\98vT2\10", align 1
@key_out = dso_local global [25 x [8 x i8]] [[8 x i8] c"\F9\ADY|I\DB\00^", [8 x i8] c"\E9\1D!\C1\D9a\A6\D6", [8 x i8] c"\E9\C2\B7\0A\1B\C6\\\F3", [8 x i8] c"\BE\1Ec\94\08d\0F\05", [8 x i8] c"\B3\9EDH\1B\DB\1En", [8 x i8] c"\94W\AA\83\B1\92\8C\0D", [8 x i8] c"\8B\B7p2\F9`b\9D", [8 x i8] c"\E8z$N,\C8^\82", [8 x i8] c"\15u\0EzON\C5w", [8 x i8] c"\12+\A7\0B:\B6J\E0", [8 x i8] c":\83<\9A\FF\C57\F6", [8 x i8] c"\94\09\DA\87\A9\0Fk\F2", [8 x i8] c"\88O\80bP`\B8\B4", [8 x i8] c"\1F\85\03\1C\19\E1\19h", [8 x i8] c"y\D97:qL\A3O", [8 x i8] c"\93\14(\87\EE;\E1\\", [8 x i8] c"\03B\9E\83\8C\E2\D1K", [8 x i8] c"\A4)\9E'F\9F\F6{", [8 x i8] c"\AF\D5\AE\D1\C1\BC\96\A8", [8 x i8] c"\10\85\1C\0E8X\DA\9F", [8 x i8] c"\E6\F5\1E\D7\9B\9D\B2\1F", [8 x i8] c"d\A6\E1J\FD6\B4o", [8 x i8] c"\80\C7\D7\D4ZTy\AD", [8 x i8] c"\05\04Kb\FAR\D0\80", [8 x i8] zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [15 x i8] c"ecb test data\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"key bytes\09\09clear bytes\09\09cipher bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@ecb_data = internal global [34 x [8 x i8]] [[8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"0\00\00\00\00\00\00\00", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] zeroinitializer, [8 x i8] c"\FE\DC\BA\98vT2\10", [8 x i8] c"|\A1\10EJ\1AnW", [8 x i8] c"\011\D9a\9D\C17n", [8 x i8] c"\07\A1\13>J\0B&\86", [8 x i8] c"8IgL&\021\9E", [8 x i8] c"\04\B9\15\BAC\FE\B5\B6", [8 x i8] c"\01\13\B9p\FD4\F2\CE", [8 x i8] c"\01p\F1uF\8F\B5\E6", [8 x i8] c"C)\7F\AD8\E3s\FE", [8 x i8] c"\07\A7\13pE\DA*\16", [8 x i8] c"\04h\91\04\C2\FD;/", [8 x i8] c"7\D0k\B5\16\CBuF", [8 x i8] c"\1F\08&\0D\1A\C2F^", [8 x i8] c"X@#d\1A\BAav", [8 x i8] c"\02X\16\16F)\B0\07", [8 x i8] c"Iy>\BCy\B3%\8F", [8 x i8] c"O\B0^\15\15\ABs\A7", [8 x i8] c"I\E9]mL\A2)\BF", [8 x i8] c"\01\83\10\DC@\9B&\D6", [8 x i8] c"\1CX\7F\1C\13\92O\EF", [8 x i8] c"\01\01\01\01\01\01\01\01", [8 x i8] c"\1F\1F\1F\1F\0E\0E\0E\0E", [8 x i8] c"\E0\FE\E0\FE\F1\FE\F1\FE", [8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\FE\DC\BA\98vT2\10"], align 16
@.str.5 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@plain_data = internal global [34 x [8 x i8]] [[8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"\10\00\00\00\00\00\00\01", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] zeroinitializer, [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01\A1\D6\D09wgB", [8 x i8] c"\\\D5L\A8=\EFW\DA", [8 x i8] c"\02H\D48\06\F6qr", [8 x i8] c"QEKX-\DFD\0A", [8 x i8] c"B\FDD0YW\7F\A2", [8 x i8] c"\05\9B^\08Q\CF\14:", [8 x i8] c"\07V\D8\E0wGa\D2", [8 x i8] c"v%\14\B8)\BFHj", [8 x i8] c";\DD\11\90I7(\02", [8 x i8] c"&\95_h5\AF`\9A", [8 x i8] c"\16M^@O'R2", [8 x i8] c"k\05n\18u\9F\\\CA", [8 x i8] c"\00K\D6\EF\09\17`b", [8 x i8] c"H\0D9\00n\E7b\F2", [8 x i8] c"Cu@\C8i\8F<\FA", [8 x i8] c"\07-C\A0w\07R\92", [8 x i8] c"\02\FEUw\81\17\F1*", [8 x i8] c"\1D\9D\\P\18\F7(\C2", [8 x i8] c"0U2(mo)Z", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] zeroinitializer, [8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF"], align 16
@cipher_data = internal global [34 x [8 x i8]] [[8 x i8] c"N\F9\97Ea\98\DDx", [8 x i8] c"Q\86o\D5\B8^\CB\8A", [8 x i8] c"}\85o\9Aa0c\F2", [8 x i8] c"$f\DD\87\8B\96<\9D", [8 x i8] c"a\F9\C3\80\22\81\B0\96", [8 x i8] c"}\0C\C60\AF\DA\1E\C7", [8 x i8] c"N\F9\97Ea\98\DDx", [8 x i8] c"\0A\CE\AB\0F\C6\A0\A2\8D", [8 x i8] c"Y\C6\82E\EB\05(+", [8 x i8] c"\B1\B8\CC\0B%\0F\09\A0", [8 x i8] c"\170\E5w\8B\EA\1D\A4", [8 x i8] c"\A2^xV\CF&Q\EB", [8 x i8] c"58\82\B1\09\CE\8F\1A", [8 x i8] c"H\F4\D0\88L7\99\18", [8 x i8] c"C!\93\B7\89Q\FC\98", [8 x i8] c"\13\F0AT\D6\9D\1A\E5", [8 x i8] c".\ED\DA\93\FF\D3\9Cy", [8 x i8] c"\D8\87\E09<-\A6\E3", [8 x i8] c"_\99\D0O[\169i", [8 x i8] c"J\05z;$\D3\97{", [8 x i8] c"E 1\C1\E4\FA\DA\8E", [8 x i8] c"uU\AE9\F5\9B\87\BD", [8 x i8] c"S\C5_\9C\B4\9F\C0\19", [8 x i8] c"z\8E{\FA\93~\89\A3", [8 x i8] c"\CF\9C]zI\86\AD\B5", [8 x i8] c"\D1\AB\B2\90e\8B\C7x", [8 x i8] c"U\CB7t\D1>\F2\01", [8 x i8] c"\FA4\ECHG\B2h\B2", [8 x i8] c"\A7\90yQ\08\EA<\AE", [8 x i8] c"\C3\9E\07-\9F\ACc\1D", [8 x i8] c"\01I3\E0\CD\AF\F6\E4", [8 x i8] c"\F2\1E\9Aw\B7\1CI\BC", [8 x i8] c"$YF\88WT6\9A", [8 x i8] c"k\\Z\9C]\9E\0AZ"], align 16
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"set_key test data\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"data[8]= \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"c=\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c" k[%2d]=\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"\0Achaining mode test data\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"key[16]   = \00", align 1
@cbc_key = internal global [16 x i8] c"\01#Eg\89\AB\CD\EF\F0\E1\D2\C3\B4\A5\96\87", align 16
@.str.13 = private unnamed_addr constant [14 x i8] c"\0Aiv[8]     = \00", align 1
@cbc_iv = internal global [8 x i8] c"\FE\DC\BA\98vT2\10", align 8
@.str.14 = private unnamed_addr constant [18 x i8] c"\0Adata[%d]  = '%s'\00", align 1
@cbc_data = internal global [40 x i8] c"7654321 Now is the time for \00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.15 = private unnamed_addr constant [14 x i8] c"\0Adata[%d]  = \00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"cbc cipher text\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"cipher[%d]= \00", align 1
@cbc_ok = internal global [32 x i8] c"kw\B4\D60\06\DE\E6\05\B1V\E2t\03\97\93X\DE\B9\E7\15F\16\D9Y\F1e+\D5\FF\92\CC", align 16
@.str.18 = private unnamed_addr constant [19 x i8] c"cfb64 cipher text\0A\00", align 1
@cfb64_ok = internal global [29 x i8] c"\E72\14\A2\82!9\CA\F2n\CFm.\B9\E7n=\A3\DE\04\D1Qr\00Q\9DW\A6\C3", align 16
@.str.19 = private unnamed_addr constant [19 x i8] c"ofb64 cipher text\0A\00", align 1
@ofb64_ok = internal global [29 x i8] c"\E72\14\A2\82!9\CAb\B3C\CC[eXs\10\DD\90\8D\0C$\1B\22c\C2\CF\80\DA", align 16
@.str.20 = private unnamed_addr constant [34 x i8] c"testing blowfish in raw ecb mode\0A\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"Set key.\0A\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"Encrypted.\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"BF_encrypt error encrypting\0A\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"got     :\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"%08lX \00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"expected:\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"decrypted.\0A\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"BF_encrypt error decrypting\0A\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"testing blowfish in ecb mode\0A\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"BF_ecb_encrypt blowfish error encrypting\0A\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"BF_ecb_encrypt error decrypting\0A\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"testing blowfish set_key\0A\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"blowfish setkey error\0A\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"testing blowfish in cbc mode\0A\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"BF_cbc_encrypt encrypt error\0A\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"0x%02X,\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"BF_cbc_encrypt decrypt error\0A\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"testing blowfish in cfb64 mode\0A\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"BF_cfb64_encrypt encrypt error\0A\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"BF_cfb64_encrypt decrypt error\0A\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"testing blowfish in ofb64\0A\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"BF_ofb64_encrypt encrypt error\0A\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"BF_ofb64_encrypt decrypt error\0A\00", align 1
@str = private unnamed_addr constant [14 x i8] c"ecb test data\00", align 1
@str.1 = private unnamed_addr constant [37 x i8] c"key bytes\09\09clear bytes\09\09cipher bytes\00", align 1
@str.2 = private unnamed_addr constant [18 x i8] c"set_key test data\00", align 1
@str.3 = private unnamed_addr constant [25 x i8] c"\0Achaining mode test data\00", align 1
@str.4 = private unnamed_addr constant [16 x i8] c"cbc cipher text\00", align 1
@str.5 = private unnamed_addr constant [18 x i8] c"cfb64 cipher text\00", align 1
@str.6 = private unnamed_addr constant [18 x i8] c"ofb64 cipher text\00", align 1
@str.7 = private unnamed_addr constant [33 x i8] c"testing blowfish in raw ecb mode\00", align 1
@str.8 = private unnamed_addr constant [29 x i8] c"testing blowfish in ecb mode\00", align 1
@str.9 = private unnamed_addr constant [25 x i8] c"testing blowfish set_key\00", align 1
@str.10 = private unnamed_addr constant [29 x i8] c"testing blowfish in cbc mode\00", align 1
@str.11 = private unnamed_addr constant [31 x i8] c"testing blowfish in cfb64 mode\00", align 1
@str.12 = private unnamed_addr constant [26 x i8] c"testing blowfish in ofb64\00", align 1
@str.13 = private unnamed_addr constant [31 x i8] c"BF_ofb64_encrypt decrypt error\00", align 1
@str.14 = private unnamed_addr constant [31 x i8] c"BF_ofb64_encrypt encrypt error\00", align 1
@str.15 = private unnamed_addr constant [31 x i8] c"BF_cfb64_encrypt decrypt error\00", align 1
@str.16 = private unnamed_addr constant [31 x i8] c"BF_cfb64_encrypt encrypt error\00", align 1
@str.17 = private unnamed_addr constant [29 x i8] c"BF_cbc_encrypt decrypt error\00", align 1
@str.18 = private unnamed_addr constant [29 x i8] c"BF_cbc_encrypt encrypt error\00", align 1
@str.19 = private unnamed_addr constant [22 x i8] c"blowfish setkey error\00", align 1
@str.20 = private unnamed_addr constant [32 x i8] c"BF_ecb_encrypt error decrypting\00", align 1
@str.21 = private unnamed_addr constant [41 x i8] c"BF_ecb_encrypt blowfish error encrypting\00", align 1
@str.22 = private unnamed_addr constant [9 x i8] c"Set key.\00", align 1
@str.23 = private unnamed_addr constant [11 x i8] c"Encrypted.\00", align 1
@str.24 = private unnamed_addr constant [11 x i8] c"decrypted.\00", align 1
@str.25 = private unnamed_addr constant [28 x i8] c"BF_encrypt error decrypting\00", align 1
@str.26 = private unnamed_addr constant [28 x i8] c"BF_encrypt error encrypting\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @print_test_data() #0 {
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @str, i64 0, i64 0))
  %puts3 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @str.1, i64 0, i64 0))
  br label %1

1:                                                ; preds = %40, %0
  %.0 = phi i32 [ 0, %0 ], [ %41, %40 ]
  %2 = icmp ult i32 %.0, 34
  br i1 %2, label %3, label %42

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %13, %3
  %.01 = phi i32 [ 0, %3 ], [ %14, %13 ]
  %5 = icmp ult i32 %.01, 8
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = zext i32 %.0 to i64
  %8 = zext i32 %.01 to i64
  %9 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @ecb_data, i64 0, i64 %7, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %11) #9
  br label %13

13:                                               ; preds = %6
  %14 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !4

15:                                               ; preds = %4
  %putchar14 = call i32 @putchar(i32 9)
  br label %16

16:                                               ; preds = %25, %15
  %.12 = phi i32 [ 0, %15 ], [ %26, %25 ]
  %17 = icmp ult i32 %.12, 8
  br i1 %17, label %18, label %27

18:                                               ; preds = %16
  %19 = zext i32 %.0 to i64
  %20 = zext i32 %.12 to i64
  %21 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i64 0, i64 %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %23) #9
  br label %25

25:                                               ; preds = %18
  %26 = add nuw nsw i32 %.12, 1
  br label %16, !llvm.loop !6

27:                                               ; preds = %16
  %putchar15 = call i32 @putchar(i32 9)
  br label %28

28:                                               ; preds = %37, %27
  %.2 = phi i32 [ 0, %27 ], [ %38, %37 ]
  %29 = icmp ult i32 %.2, 8
  br i1 %29, label %30, label %39

30:                                               ; preds = %28
  %31 = zext i32 %.0 to i64
  %32 = zext i32 %.2 to i64
  %33 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @cipher_data, i64 0, i64 %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %35) #9
  br label %37

37:                                               ; preds = %30
  %38 = add nuw nsw i32 %.2, 1
  br label %28, !llvm.loop !7

39:                                               ; preds = %28
  %putchar16 = call i32 @putchar(i32 10)
  br label %40

40:                                               ; preds = %39
  %41 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !8

42:                                               ; preds = %1
  %puts4 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str.2, i64 0, i64 0))
  %43 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #9
  br label %44

44:                                               ; preds = %52, %42
  %.3 = phi i32 [ 0, %42 ], [ %53, %52 ]
  %45 = icmp ult i32 %.3, 8
  br i1 %45, label %46, label %54

46:                                               ; preds = %44
  %47 = zext i32 %.3 to i64
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* @key_data, i64 0, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %50) #9
  br label %52

52:                                               ; preds = %46
  %53 = add nuw nsw i32 %.3, 1
  br label %44, !llvm.loop !9

54:                                               ; preds = %44
  %putchar = call i32 @putchar(i32 10)
  br label %55

55:                                               ; preds = %83, %54
  %.1 = phi i32 [ 0, %54 ], [ %84, %83 ]
  %56 = icmp ult i32 %.1, 24
  br i1 %56, label %57, label %85

57:                                               ; preds = %55
  %58 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #9
  br label %59

59:                                               ; preds = %68, %57
  %.4 = phi i32 [ 0, %57 ], [ %69, %68 ]
  %60 = icmp ult i32 %.4, 8
  br i1 %60, label %61, label %70

61:                                               ; preds = %59
  %62 = zext i32 %.1 to i64
  %63 = zext i32 %.4 to i64
  %64 = getelementptr inbounds [25 x [8 x i8]], [25 x [8 x i8]]* @key_out, i64 0, i64 %62, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %66) #9
  br label %68

68:                                               ; preds = %61
  %69 = add nuw nsw i32 %.4, 1
  br label %59, !llvm.loop !10

70:                                               ; preds = %59
  %71 = add nuw nsw i32 %.1, 1
  %72 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 noundef %71) #9
  br label %73

73:                                               ; preds = %80, %70
  %.5 = phi i32 [ 0, %70 ], [ %81, %80 ]
  %.not = icmp ugt i32 %.5, %.1
  br i1 %.not, label %82, label %74

74:                                               ; preds = %73
  %75 = zext i32 %.5 to i64
  %76 = getelementptr inbounds [25 x i8], [25 x i8]* @key_test, i64 0, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %78) #9
  br label %80

80:                                               ; preds = %74
  %81 = add nuw nsw i32 %.5, 1
  br label %73, !llvm.loop !11

82:                                               ; preds = %73
  %putchar13 = call i32 @putchar(i32 10)
  br label %83

83:                                               ; preds = %82
  %84 = add nuw nsw i32 %.1, 1
  br label %55, !llvm.loop !12

85:                                               ; preds = %55
  %puts5 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str.3, i64 0, i64 0))
  %86 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0)) #9
  br label %87

87:                                               ; preds = %95, %85
  %.6 = phi i32 [ 0, %85 ], [ %96, %95 ]
  %88 = icmp ult i32 %.6, 16
  br i1 %88, label %89, label %97

89:                                               ; preds = %87
  %90 = zext i32 %.6 to i64
  %91 = getelementptr inbounds [16 x i8], [16 x i8]* @cbc_key, i64 0, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %93) #9
  br label %95

95:                                               ; preds = %89
  %96 = add nuw nsw i32 %.6, 1
  br label %87, !llvm.loop !13

97:                                               ; preds = %87
  %98 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)) #9
  br label %99

99:                                               ; preds = %107, %97
  %.7 = phi i32 [ 0, %97 ], [ %108, %107 ]
  %100 = icmp ult i32 %.7, 8
  br i1 %100, label %101, label %109

101:                                              ; preds = %99
  %102 = zext i32 %.7 to i64
  %103 = getelementptr inbounds [8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %105) #9
  br label %107

107:                                              ; preds = %101
  %108 = add nuw nsw i32 %.7, 1
  br label %99, !llvm.loop !14

109:                                              ; preds = %99
  %110 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #10
  %111 = add i64 %110, 1
  %112 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i64 noundef %111, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #9
  %113 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #10
  %114 = add i64 %113, 1
  %115 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i64 noundef %114) #9
  br label %116

116:                                              ; preds = %127, %109
  %.8 = phi i32 [ 0, %109 ], [ %128, %127 ]
  %117 = zext i32 %.8 to i64
  %118 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #10
  %119 = add i64 %118, 1
  %120 = icmp ugt i64 %119, %117
  br i1 %120, label %121, label %129

121:                                              ; preds = %116
  %122 = zext i32 %.8 to i64
  %123 = getelementptr inbounds [40 x i8], [40 x i8]* @cbc_data, i64 0, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %125) #9
  br label %127

127:                                              ; preds = %121
  %128 = add nuw nsw i32 %.8, 1
  br label %116, !llvm.loop !15

129:                                              ; preds = %116
  %putchar6 = call i32 @putchar(i32 10)
  %puts7 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @str.4, i64 0, i64 0))
  %130 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i32 noundef 32) #9
  br label %131

131:                                              ; preds = %139, %129
  %.9 = phi i32 [ 0, %129 ], [ %140, %139 ]
  %132 = icmp ult i32 %.9, 32
  br i1 %132, label %133, label %141

133:                                              ; preds = %131
  %134 = zext i32 %.9 to i64
  %135 = getelementptr inbounds [32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %137) #9
  br label %139

139:                                              ; preds = %133
  %140 = add nuw nsw i32 %.9, 1
  br label %131, !llvm.loop !16

141:                                              ; preds = %131
  %putchar8 = call i32 @putchar(i32 10)
  %puts9 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str.5, i64 0, i64 0))
  %142 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #10
  %143 = add i64 %142, 1
  %144 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i64 noundef %143) #9
  br label %145

145:                                              ; preds = %156, %141
  %.10 = phi i32 [ 0, %141 ], [ %157, %156 ]
  %146 = zext i32 %.10 to i64
  %147 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #10
  %148 = add i64 %147, 1
  %149 = icmp ugt i64 %148, %146
  br i1 %149, label %150, label %158

150:                                              ; preds = %145
  %151 = zext i32 %.10 to i64
  %152 = getelementptr inbounds [29 x i8], [29 x i8]* @cfb64_ok, i64 0, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %154) #9
  br label %156

156:                                              ; preds = %150
  %157 = add nuw nsw i32 %.10, 1
  br label %145, !llvm.loop !17

158:                                              ; preds = %145
  %putchar10 = call i32 @putchar(i32 10)
  %puts11 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str.6, i64 0, i64 0))
  %159 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #10
  %160 = add i64 %159, 1
  %161 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i64 noundef %160) #9
  br label %162

162:                                              ; preds = %173, %158
  %.11 = phi i32 [ 0, %158 ], [ %174, %173 ]
  %163 = zext i32 %.11 to i64
  %164 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #10
  %165 = add i64 %164, 1
  %166 = icmp ugt i64 %165, %163
  br i1 %166, label %167, label %175

167:                                              ; preds = %162
  %168 = zext i32 %.11 to i64
  %169 = getelementptr inbounds [29 x i8], [29 x i8]* @ofb64_ok, i64 0, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %171) #9
  br label %173

173:                                              ; preds = %167
  %174 = add nuw nsw i32 %.11, 1
  br label %162, !llvm.loop !18

175:                                              ; preds = %162
  %putchar12 = call i32 @putchar(i32 10)
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #3 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = call i32 @print_test_data()
  br label %8

6:                                                ; preds = %2
  %7 = call i32 @test()
  br label %8

8:                                                ; preds = %6, %4
  %.0 = phi i32 [ %5, %4 ], [ %7, %6 ]
  call void @exit(i32 noundef %.0) #11
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test() #0 {
  %1 = alloca [40 x i8], align 16
  %2 = alloca [40 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bf_key_st, align 8
  %6 = alloca [2 x i64], align 16
  %7 = alloca [8 x i8], align 1
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @str.7, i64 0, i64 0))
  br label %8

8:                                                ; preds = %91, %0
  %storemerge = phi i32 [ 0, %0 ], [ %93, %91 ]
  %.01 = phi i32 [ 0, %0 ], [ %.23, %91 ]
  store i32 %storemerge, i32* %4, align 4
  %9 = icmp slt i32 %storemerge, 2
  br i1 %9, label %10, label %94

10:                                               ; preds = %8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [2 x i8*], [2 x i8*]* @bf_key, i64 0, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %14) #10
  %16 = trunc i64 %15 to i32
  %17 = sext i32 %11 to i64
  %18 = getelementptr inbounds [2 x i8*], [2 x i8*]* @bf_key, i64 0, i64 %17
  %19 = load i8*, i8** %18, align 8
  call void @BF_set_key(%struct.bf_key_st* noundef nonnull %5, i32 noundef %16, i8* noundef %19) #9
  %puts51 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @str.22, i64 0, i64 0))
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [2 x [2 x i64]], [2 x [2 x i64]]* @bf_plain, i64 0, i64 %21, i64 0
  %23 = load i64, i64* %22, align 16
  %24 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  store i64 %23, i64* %24, align 16
  %25 = sext i32 %20 to i64
  %26 = getelementptr inbounds [2 x [2 x i64]], [2 x [2 x i64]]* @bf_plain, i64 0, i64 %25, i64 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1
  store i64 %27, i64* %28, align 8
  %29 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  call void @BF_encrypt(i64* noundef nonnull %29, %struct.bf_key_st* noundef nonnull %5, i32 noundef 1) #9
  %puts52 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @str.23, i64 0, i64 0))
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [2 x [2 x i64]], [2 x [2 x i64]]* @bf_cipher, i64 0, i64 %31, i64 0
  %lhsv = load i64, i64* %32, align 16
  %33 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %rhsv = load i64, i64* %33, align 16
  %.not53 = icmp eq i64 %lhsv, %rhsv
  br i1 %.not53, label %59, label %34

34:                                               ; preds = %10
  %puts61 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @str.26, i64 0, i64 0))
  %35 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0)) #9
  br label %36

36:                                               ; preds = %43, %34
  %.0 = phi i32 [ 0, %34 ], [ %44, %43 ]
  %37 = icmp ult i32 %.0, 2
  br i1 %37, label %38, label %45

38:                                               ; preds = %36
  %39 = zext i32 %.0 to i64
  %40 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i64 noundef %41) #9
  br label %43

43:                                               ; preds = %38
  %44 = add nuw nsw i32 %.0, 1
  br label %36, !llvm.loop !19

45:                                               ; preds = %36
  %putchar62 = call i32 @putchar(i32 10)
  %46 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0)) #9
  br label %47

47:                                               ; preds = %56, %45
  %.1 = phi i32 [ 0, %45 ], [ %57, %56 ]
  %48 = icmp ult i32 %.1, 2
  br i1 %48, label %49, label %58

49:                                               ; preds = %47
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = zext i32 %.1 to i64
  %53 = getelementptr inbounds [2 x [2 x i64]], [2 x [2 x i64]]* @bf_cipher, i64 0, i64 %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i64 noundef %54) #9
  br label %56

56:                                               ; preds = %49
  %57 = add nuw nsw i32 %.1, 1
  br label %47, !llvm.loop !20

58:                                               ; preds = %47
  %putchar63 = call i32 @putchar(i32 10)
  br label %59

59:                                               ; preds = %58, %10
  %.12 = phi i32 [ 1, %58 ], [ %.01, %10 ]
  %60 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  call void @BF_encrypt(i64* noundef nonnull %60, %struct.bf_key_st* noundef nonnull %5, i32 noundef 0) #9
  %puts54 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @str.24, i64 0, i64 0))
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [2 x [2 x i64]], [2 x [2 x i64]]* @bf_plain, i64 0, i64 %62, i64 0
  %lhsv55 = load i64, i64* %63, align 16
  %64 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %rhsv56 = load i64, i64* %64, align 16
  %.not57 = icmp eq i64 %lhsv55, %rhsv56
  br i1 %.not57, label %90, label %65

65:                                               ; preds = %59
  %puts58 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @str.25, i64 0, i64 0))
  %66 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0)) #9
  br label %67

67:                                               ; preds = %74, %65
  %.2 = phi i32 [ 0, %65 ], [ %75, %74 ]
  %68 = icmp ult i32 %.2, 2
  br i1 %68, label %69, label %76

69:                                               ; preds = %67
  %70 = zext i32 %.2 to i64
  %71 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i64 noundef %72) #9
  br label %74

74:                                               ; preds = %69
  %75 = add nuw nsw i32 %.2, 1
  br label %67, !llvm.loop !21

76:                                               ; preds = %67
  %putchar59 = call i32 @putchar(i32 10)
  %77 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0)) #9
  br label %78

78:                                               ; preds = %87, %76
  %.3 = phi i32 [ 0, %76 ], [ %88, %87 ]
  %79 = icmp ult i32 %.3, 2
  br i1 %79, label %80, label %89

80:                                               ; preds = %78
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = zext i32 %.3 to i64
  %84 = getelementptr inbounds [2 x [2 x i64]], [2 x [2 x i64]]* @bf_plain, i64 0, i64 %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i64 noundef %85) #9
  br label %87

87:                                               ; preds = %80
  %88 = add nuw nsw i32 %.3, 1
  br label %78, !llvm.loop !22

89:                                               ; preds = %78
  %putchar60 = call i32 @putchar(i32 10)
  br label %90

90:                                               ; preds = %89, %59
  %.23 = phi i32 [ 1, %89 ], [ %.12, %59 ]
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  br label %8, !llvm.loop !23

94:                                               ; preds = %8
  %puts13 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @str.8, i64 0, i64 0))
  br label %95

95:                                               ; preds = %171, %94
  %storemerge14 = phi i32 [ 0, %94 ], [ %173, %171 ]
  %.34 = phi i32 [ %.01, %94 ], [ %.56, %171 ]
  store i32 %storemerge14, i32* %4, align 4
  %96 = icmp slt i32 %storemerge14, 34
  br i1 %96, label %97, label %174

97:                                               ; preds = %95
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @ecb_data, i64 0, i64 %99, i64 0
  call void @BF_set_key(%struct.bf_key_st* noundef nonnull %5, i32 noundef 8, i8* noundef nonnull %100) #9
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i64 0, i64 %102, i64 0
  %104 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  call void @BF_ecb_encrypt(i8* noundef nonnull %103, i8* noundef nonnull %104, %struct.bf_key_st* noundef nonnull %5, i32 noundef 1) #9
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @cipher_data, i64 0, i64 %106, i64 0
  %108 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %bcmp42 = call i32 @bcmp(i8* noundef nonnull dereferenceable(8) %107, i8* noundef nonnull dereferenceable(8) %108, i64 8)
  %.not43 = icmp eq i32 %bcmp42, 0
  br i1 %.not43, label %136, label %109

109:                                              ; preds = %97
  %puts48 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @str.21, i64 0, i64 0))
  %110 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0)) #9
  br label %111

111:                                              ; preds = %119, %109
  %.4 = phi i32 [ 0, %109 ], [ %120, %119 ]
  %112 = icmp ult i32 %.4, 8
  br i1 %112, label %113, label %121

113:                                              ; preds = %111
  %114 = zext i32 %.4 to i64
  %115 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i32 noundef %117) #9
  br label %119

119:                                              ; preds = %113
  %120 = add nuw nsw i32 %.4, 1
  br label %111, !llvm.loop !24

121:                                              ; preds = %111
  %putchar49 = call i32 @putchar(i32 10)
  %122 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0)) #9
  br label %123

123:                                              ; preds = %133, %121
  %.5 = phi i32 [ 0, %121 ], [ %134, %133 ]
  %124 = icmp ult i32 %.5, 8
  br i1 %124, label %125, label %135

125:                                              ; preds = %123
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = zext i32 %.5 to i64
  %129 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @cipher_data, i64 0, i64 %127, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i32 noundef %131) #9
  br label %133

133:                                              ; preds = %125
  %134 = add nuw nsw i32 %.5, 1
  br label %123, !llvm.loop !25

135:                                              ; preds = %123
  %putchar50 = call i32 @putchar(i32 10)
  br label %136

136:                                              ; preds = %135, %97
  %.45 = phi i32 [ 1, %135 ], [ %.34, %97 ]
  %137 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %138 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  call void @BF_ecb_encrypt(i8* noundef nonnull %137, i8* noundef nonnull %138, %struct.bf_key_st* noundef nonnull %5, i32 noundef 0) #9
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i64 0, i64 %140, i64 0
  %142 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %bcmp44 = call i32 @bcmp(i8* noundef nonnull dereferenceable(8) %141, i8* noundef nonnull dereferenceable(8) %142, i64 8)
  %.not45 = icmp eq i32 %bcmp44, 0
  br i1 %.not45, label %170, label %143

143:                                              ; preds = %136
  %puts46 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @str.20, i64 0, i64 0))
  %144 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0)) #9
  br label %145

145:                                              ; preds = %153, %143
  %.6 = phi i32 [ 0, %143 ], [ %154, %153 ]
  %146 = icmp ult i32 %.6, 8
  br i1 %146, label %147, label %155

147:                                              ; preds = %145
  %148 = zext i32 %.6 to i64
  %149 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i32 noundef %151) #9
  br label %153

153:                                              ; preds = %147
  %154 = add nuw nsw i32 %.6, 1
  br label %145, !llvm.loop !26

155:                                              ; preds = %145
  %putchar = call i32 @putchar(i32 10)
  %156 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0)) #9
  br label %157

157:                                              ; preds = %167, %155
  %.7 = phi i32 [ 0, %155 ], [ %168, %167 ]
  %158 = icmp ult i32 %.7, 8
  br i1 %158, label %159, label %169

159:                                              ; preds = %157
  %160 = load i32, i32* %4, align 4
  %161 = sext i32 %160 to i64
  %162 = zext i32 %.7 to i64
  %163 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i64 0, i64 %161, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i32 noundef %165) #9
  br label %167

167:                                              ; preds = %159
  %168 = add nuw nsw i32 %.7, 1
  br label %157, !llvm.loop !27

169:                                              ; preds = %157
  %putchar47 = call i32 @putchar(i32 10)
  br label %170

170:                                              ; preds = %169, %136
  %.56 = phi i32 [ 1, %169 ], [ %.45, %136 ]
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %4, align 4
  %173 = add nsw i32 %172, 1
  br label %95, !llvm.loop !28

174:                                              ; preds = %95
  %puts15 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str.9, i64 0, i64 0))
  br label %175

175:                                              ; preds = %187, %174
  %storemerge16 = phi i32 [ 1, %174 ], [ %189, %187 ]
  %.67 = phi i32 [ %.34, %174 ], [ %.78, %187 ]
  store i32 %storemerge16, i32* %4, align 4
  %176 = icmp slt i32 %storemerge16, 25
  br i1 %176, label %177, label %190

177:                                              ; preds = %175
  %178 = load i32, i32* %4, align 4
  call void @BF_set_key(%struct.bf_key_st* noundef nonnull %5, i32 noundef %178, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @key_test, i64 0, i64 0)) #9
  %179 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  call void @BF_ecb_encrypt(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @key_data, i64 0, i64 0), i8* noundef nonnull %179, %struct.bf_key_st* noundef nonnull %5, i32 noundef 1) #9
  %180 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %181 = load i32, i32* %4, align 4
  %182 = add nsw i32 %181, -1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [25 x [8 x i8]], [25 x [8 x i8]]* @key_out, i64 0, i64 %183, i64 0
  %bcmp39 = call i32 @bcmp(i8* noundef nonnull dereferenceable(8) %180, i8* noundef nonnull dereferenceable(8) %184, i64 8)
  %.not40 = icmp eq i32 %bcmp39, 0
  br i1 %.not40, label %186, label %185

185:                                              ; preds = %177
  %puts41 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @str.19, i64 0, i64 0))
  br label %186

186:                                              ; preds = %185, %177
  %.78 = phi i32 [ 1, %185 ], [ %.67, %177 ]
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %4, align 4
  %189 = add nsw i32 %188, 1
  br label %175, !llvm.loop !29

190:                                              ; preds = %175
  %puts17 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @str.10, i64 0, i64 0))
  %191 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #10
  %192 = add i64 %191, 1
  call void @BF_set_key(%struct.bf_key_st* noundef nonnull %5, i32 noundef 16, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i64 0, i64 0)) #9
  %193 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %193, i8 0, i64 40, i1 false)
  %194 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %194, i8 0, i64 40, i1 false)
  %195 = load i64, i64* bitcast ([8 x i8]* @cbc_iv to i64*), align 8
  store i64 %195, i64* %3, align 8
  %196 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %197 = bitcast i64* %3 to i8*
  call void @BF_cbc_encrypt(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0), i8* noundef nonnull %196, i64 noundef %192, %struct.bf_key_st* noundef nonnull %5, i8* noundef nonnull %197, i32 noundef 1) #9
  %198 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(32) %198, i8* noundef nonnull dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 0), i64 32)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %211, label %199

199:                                              ; preds = %190
  %puts38 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @str.18, i64 0, i64 0))
  br label %200

200:                                              ; preds = %208, %199
  %.8 = phi i32 [ 0, %199 ], [ %209, %208 ]
  %201 = icmp ult i32 %.8, 32
  br i1 %201, label %202, label %210

202:                                              ; preds = %200
  %203 = zext i32 %.8 to i64
  %204 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i32 noundef %206) #9
  br label %208

208:                                              ; preds = %202
  %209 = add nuw nsw i32 %.8, 1
  br label %200, !llvm.loop !30

210:                                              ; preds = %200
  br label %211

211:                                              ; preds = %210, %190
  %.89 = phi i32 [ 1, %210 ], [ %.67, %190 ]
  %212 = load i64, i64* bitcast ([8 x i8]* @cbc_iv to i64*), align 8
  store i64 %212, i64* %3, align 8
  %213 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %214 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  %215 = bitcast i64* %3 to i8*
  call void @BF_cbc_encrypt(i8* noundef nonnull %213, i8* noundef nonnull %214, i64 noundef %192, %struct.bf_key_st* noundef nonnull %5, i8* noundef nonnull %215, i32 noundef 0) #9
  %216 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  %217 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #10
  %218 = add i64 %217, 1
  %bcmp18 = call i32 @bcmp(i8* nonnull %216, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0), i64 %218)
  %.not19 = icmp eq i32 %bcmp18, 0
  br i1 %.not19, label %220, label %219

219:                                              ; preds = %211
  %puts37 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @str.17, i64 0, i64 0))
  br label %220

220:                                              ; preds = %219, %211
  %.910 = phi i32 [ 1, %219 ], [ %.89, %211 ]
  %puts20 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @str.11, i64 0, i64 0))
  call void @BF_set_key(%struct.bf_key_st* noundef nonnull %5, i32 noundef 16, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i64 0, i64 0)) #9
  %221 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %221, i8 0, i64 40, i1 false)
  %222 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %222, i8 0, i64 40, i1 false)
  %223 = load i64, i64* bitcast ([8 x i8]* @cbc_iv to i64*), align 8
  store i64 %223, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %224 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %225 = bitcast i64* %3 to i8*
  call void @BF_cfb64_encrypt(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0), i8* noundef nonnull %224, i64 noundef 13, %struct.bf_key_st* noundef nonnull %5, i8* noundef nonnull %225, i32* noundef nonnull %4, i32 noundef 1) #9
  %226 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 13
  %227 = add i64 %191, -12
  %228 = bitcast i64* %3 to i8*
  call void @BF_cfb64_encrypt(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 13), i8* noundef nonnull %226, i64 noundef %227, %struct.bf_key_st* noundef nonnull %5, i8* noundef nonnull %228, i32* noundef nonnull %4, i32 noundef 1) #9
  %229 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %sext = shl i64 %192, 32
  %230 = ashr exact i64 %sext, 32
  %bcmp21 = call i32 @bcmp(i8* nonnull %229, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @cfb64_ok, i64 0, i64 0), i64 %230)
  %.not22 = icmp eq i32 %bcmp21, 0
  br i1 %.not22, label %244, label %231

231:                                              ; preds = %220
  %puts36 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @str.16, i64 0, i64 0))
  br label %232

232:                                              ; preds = %241, %231
  %.9 = phi i32 [ 0, %231 ], [ %242, %241 ]
  %233 = trunc i64 %192 to i32
  %234 = icmp slt i32 %.9, %233
  br i1 %234, label %235, label %243

235:                                              ; preds = %232
  %236 = zext i32 %.9 to i64
  %237 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 %236
  %238 = load i8, i8* %237, align 1
  %239 = zext i8 %238 to i32
  %240 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i32 noundef %239) #9
  br label %241

241:                                              ; preds = %235
  %242 = add nuw nsw i32 %.9, 1
  br label %232, !llvm.loop !31

243:                                              ; preds = %232
  br label %244

244:                                              ; preds = %243, %220
  %.1011 = phi i32 [ 1, %243 ], [ %.910, %220 ]
  store i32 0, i32* %4, align 4
  %245 = load i64, i64* bitcast ([8 x i8]* @cbc_iv to i64*), align 8
  store i64 %245, i64* %3, align 8
  %246 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %247 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  %248 = bitcast i64* %3 to i8*
  call void @BF_cfb64_encrypt(i8* noundef nonnull %246, i8* noundef nonnull %247, i64 noundef 17, %struct.bf_key_st* noundef nonnull %5, i8* noundef nonnull %248, i32* noundef nonnull %4, i32 noundef 0) #9
  %249 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 17
  %250 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 17
  %251 = add i64 %191, -16
  %252 = bitcast i64* %3 to i8*
  call void @BF_cfb64_encrypt(i8* noundef nonnull %249, i8* noundef nonnull %250, i64 noundef %251, %struct.bf_key_st* noundef nonnull %5, i8* noundef nonnull %252, i32* noundef nonnull %4, i32 noundef 0) #9
  %253 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  %sext23 = shl i64 %192, 32
  %254 = ashr exact i64 %sext23, 32
  %bcmp24 = call i32 @bcmp(i8* nonnull %253, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0), i64 %254)
  %.not25 = icmp eq i32 %bcmp24, 0
  br i1 %.not25, label %256, label %255

255:                                              ; preds = %244
  %puts35 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @str.15, i64 0, i64 0))
  br label %256

256:                                              ; preds = %255, %244
  %.11 = phi i32 [ 1, %255 ], [ %.1011, %244 ]
  %puts26 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @str.12, i64 0, i64 0))
  call void @BF_set_key(%struct.bf_key_st* noundef nonnull %5, i32 noundef 16, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i64 0, i64 0)) #9
  %257 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %257, i8 0, i64 40, i1 false)
  %258 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %258, i8 0, i64 40, i1 false)
  %259 = load i64, i64* bitcast ([8 x i8]* @cbc_iv to i64*), align 8
  store i64 %259, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %260 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %261 = bitcast i64* %3 to i8*
  call void @BF_ofb64_encrypt(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0), i8* noundef nonnull %260, i64 noundef 13, %struct.bf_key_st* noundef nonnull %5, i8* noundef nonnull %261, i32* noundef nonnull %4) #9
  %262 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 13
  %263 = add i64 %191, -12
  %264 = bitcast i64* %3 to i8*
  call void @BF_ofb64_encrypt(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 13), i8* noundef nonnull %262, i64 noundef %263, %struct.bf_key_st* noundef nonnull %5, i8* noundef nonnull %264, i32* noundef nonnull %4) #9
  %265 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %sext27 = shl i64 %192, 32
  %266 = ashr exact i64 %sext27, 32
  %bcmp28 = call i32 @bcmp(i8* nonnull %265, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @ofb64_ok, i64 0, i64 0), i64 %266)
  %.not29 = icmp eq i32 %bcmp28, 0
  br i1 %.not29, label %280, label %267

267:                                              ; preds = %256
  %puts34 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @str.14, i64 0, i64 0))
  br label %268

268:                                              ; preds = %277, %267
  %.10 = phi i32 [ 0, %267 ], [ %278, %277 ]
  %269 = trunc i64 %192 to i32
  %270 = icmp slt i32 %.10, %269
  br i1 %270, label %271, label %279

271:                                              ; preds = %268
  %272 = zext i32 %.10 to i64
  %273 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 %272
  %274 = load i8, i8* %273, align 1
  %275 = zext i8 %274 to i32
  %276 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i32 noundef %275) #9
  br label %277

277:                                              ; preds = %271
  %278 = add nuw nsw i32 %.10, 1
  br label %268, !llvm.loop !32

279:                                              ; preds = %268
  br label %280

280:                                              ; preds = %279, %256
  %.1212 = phi i32 [ 1, %279 ], [ %.11, %256 ]
  store i32 0, i32* %4, align 4
  %281 = load i64, i64* bitcast ([8 x i8]* @cbc_iv to i64*), align 8
  store i64 %281, i64* %3, align 8
  %282 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %283 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  %284 = bitcast i64* %3 to i8*
  call void @BF_ofb64_encrypt(i8* noundef nonnull %282, i8* noundef nonnull %283, i64 noundef 17, %struct.bf_key_st* noundef nonnull %5, i8* noundef nonnull %284, i32* noundef nonnull %4) #9
  %285 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 17
  %286 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 17
  %287 = add i64 %191, -16
  %288 = bitcast i64* %3 to i8*
  call void @BF_ofb64_encrypt(i8* noundef nonnull %285, i8* noundef nonnull %286, i64 noundef %287, %struct.bf_key_st* noundef nonnull %5, i8* noundef nonnull %288, i32* noundef nonnull %4) #9
  %289 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  %sext30 = shl i64 %192, 32
  %290 = ashr exact i64 %sext30, 32
  %bcmp31 = call i32 @bcmp(i8* nonnull %289, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0), i64 %290)
  %.not32 = icmp eq i32 %bcmp31, 0
  br i1 %.not32, label %292, label %291

291:                                              ; preds = %280
  %puts33 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @str.13, i64 0, i64 0))
  br label %292

292:                                              ; preds = %291, %280
  %.13 = phi i32 [ 1, %291 ], [ %.1212, %280 ]
  ret i32 %.13
}

declare dso_local void @BF_set_key(%struct.bf_key_st* noundef, i32 noundef, i8* noundef) #1

declare dso_local void @BF_encrypt(i64* noundef, %struct.bf_key_st* noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local void @BF_ecb_encrypt(i8* noundef, i8* noundef, %struct.bf_key_st* noundef, i32 noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare dso_local void @BF_cbc_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.bf_key_st* noundef, i8* noundef, i32 noundef) #1

declare dso_local void @BF_cfb64_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.bf_key_st* noundef, i8* noundef, i32* noundef, i32 noundef) #1

declare dso_local void @BF_ofb64_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.bf_key_st* noundef, i8* noundef, i32* noundef) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #7

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { nofree nounwind }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
