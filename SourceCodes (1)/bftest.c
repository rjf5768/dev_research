; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/security-blowfish/bftest.c'
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
@cbc_iv = internal global [8 x i8] c"\FE\DC\BA\98vT2\10", align 1
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @print_test_data() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %63, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 34
  br i1 %7, label %8, label %66

8:                                                ; preds = %5
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %22, %8
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @ecb_data, i64 0, i64 %14
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %20)
  br label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %9, !llvm.loop !4

25:                                               ; preds = %9
  %26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %40, %25
  %28 = load i32, i32* %2, align 4
  %29 = icmp slt i32 %28, 8
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i64 0, i64 %32
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i8], [8 x i8]* %33, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %38)
  br label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %2, align 4
  br label %27, !llvm.loop !6

43:                                               ; preds = %27
  %44 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %58, %43
  %46 = load i32, i32* %2, align 4
  %47 = icmp slt i32 %46, 8
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load i32, i32* %1, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @cipher_data, i64 0, i64 %50
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [8 x i8], [8 x i8]* %51, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %56)
  br label %58

58:                                               ; preds = %48
  %59 = load i32, i32* %2, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %2, align 4
  br label %45, !llvm.loop !7

61:                                               ; preds = %45
  %62 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61
  %64 = load i32, i32* %1, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %1, align 4
  br label %5, !llvm.loop !8

66:                                               ; preds = %5
  %67 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %68 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %79, %66
  %70 = load i32, i32* %2, align 4
  %71 = icmp slt i32 %70, 8
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load i32, i32* %2, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [8 x i8], [8 x i8]* @key_data, i64 0, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %77)
  br label %79

79:                                               ; preds = %72
  %80 = load i32, i32* %2, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %2, align 4
  br label %69, !llvm.loop !9

82:                                               ; preds = %69
  %83 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %84

84:                                               ; preds = %126, %82
  %85 = load i32, i32* %1, align 4
  %86 = icmp slt i32 %85, 24
  br i1 %86, label %87, label %129

87:                                               ; preds = %84
  %88 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %102, %87
  %90 = load i32, i32* %2, align 4
  %91 = icmp slt i32 %90, 8
  br i1 %91, label %92, label %105

92:                                               ; preds = %89
  %93 = load i32, i32* %1, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [25 x [8 x i8]], [25 x [8 x i8]]* @key_out, i64 0, i64 %94
  %96 = load i32, i32* %2, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [8 x i8], [8 x i8]* %95, i64 0, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %100)
  br label %102

102:                                              ; preds = %92
  %103 = load i32, i32* %2, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %2, align 4
  br label %89, !llvm.loop !10

105:                                              ; preds = %89
  %106 = load i32, i32* %1, align 4
  %107 = add nsw i32 %106, 1
  %108 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 noundef %107)
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %121, %105
  %110 = load i32, i32* %2, align 4
  %111 = load i32, i32* %1, align 4
  %112 = add nsw i32 %111, 1
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %109
  %115 = load i32, i32* %2, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [25 x i8], [25 x i8]* @key_test, i64 0, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %119)
  br label %121

121:                                              ; preds = %114
  %122 = load i32, i32* %2, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %2, align 4
  br label %109, !llvm.loop !11

124:                                              ; preds = %109
  %125 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124
  %127 = load i32, i32* %1, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %1, align 4
  br label %84, !llvm.loop !12

129:                                              ; preds = %84
  %130 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %131 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %142, %129
  %133 = load i32, i32* %2, align 4
  %134 = icmp slt i32 %133, 16
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = load i32, i32* %2, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [16 x i8], [16 x i8]* @cbc_key, i64 0, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %140)
  br label %142

142:                                              ; preds = %135
  %143 = load i32, i32* %2, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %2, align 4
  br label %132, !llvm.loop !13

145:                                              ; preds = %132
  %146 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %157, %145
  %148 = load i32, i32* %2, align 4
  %149 = icmp slt i32 %148, 8
  br i1 %149, label %150, label %160

150:                                              ; preds = %147
  %151 = load i32, i32* %2, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %155)
  br label %157

157:                                              ; preds = %150
  %158 = load i32, i32* %2, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %2, align 4
  br label %147, !llvm.loop !14

160:                                              ; preds = %147
  %161 = call i64 @strlen(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #6
  %162 = add i64 %161, 1
  %163 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i64 noundef %162, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0))
  %164 = call i64 @strlen(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #6
  %165 = add i64 %164, 1
  %166 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i64 noundef %165)
  store i32 0, i32* %2, align 4
  br label %167

167:                                              ; preds = %180, %160
  %168 = load i32, i32* %2, align 4
  %169 = sext i32 %168 to i64
  %170 = call i64 @strlen(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #6
  %171 = add i64 %170, 1
  %172 = icmp ult i64 %169, %171
  br i1 %172, label %173, label %183

173:                                              ; preds = %167
  %174 = load i32, i32* %2, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [40 x i8], [40 x i8]* @cbc_data, i64 0, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %178)
  br label %180

180:                                              ; preds = %173
  %181 = load i32, i32* %2, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %2, align 4
  br label %167, !llvm.loop !15

183:                                              ; preds = %167
  %184 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %185 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %186 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i32 noundef 32)
  store i32 0, i32* %2, align 4
  br label %187

187:                                              ; preds = %197, %183
  %188 = load i32, i32* %2, align 4
  %189 = icmp slt i32 %188, 32
  br i1 %189, label %190, label %200

190:                                              ; preds = %187
  %191 = load i32, i32* %2, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %195)
  br label %197

197:                                              ; preds = %190
  %198 = load i32, i32* %2, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %2, align 4
  br label %187, !llvm.loop !16

200:                                              ; preds = %187
  %201 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %202 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0))
  %203 = call i64 @strlen(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #6
  %204 = add i64 %203, 1
  %205 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i64 noundef %204)
  store i32 0, i32* %2, align 4
  br label %206

206:                                              ; preds = %219, %200
  %207 = load i32, i32* %2, align 4
  %208 = sext i32 %207 to i64
  %209 = call i64 @strlen(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #6
  %210 = add i64 %209, 1
  %211 = icmp ult i64 %208, %210
  br i1 %211, label %212, label %222

212:                                              ; preds = %206
  %213 = load i32, i32* %2, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [29 x i8], [29 x i8]* @cfb64_ok, i64 0, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  %218 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %217)
  br label %219

219:                                              ; preds = %212
  %220 = load i32, i32* %2, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %2, align 4
  br label %206, !llvm.loop !17

222:                                              ; preds = %206
  %223 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %224 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0))
  %225 = call i64 @strlen(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #6
  %226 = add i64 %225, 1
  %227 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i64 noundef %226)
  store i32 0, i32* %2, align 4
  br label %228

228:                                              ; preds = %241, %222
  %229 = load i32, i32* %2, align 4
  %230 = sext i32 %229 to i64
  %231 = call i64 @strlen(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #6
  %232 = add i64 %231, 1
  %233 = icmp ult i64 %230, %232
  br i1 %233, label %234, label %244

234:                                              ; preds = %228
  %235 = load i32, i32* %2, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [29 x i8], [29 x i8]* @ofb64_ok, i64 0, i64 %236
  %238 = load i8, i8* %237, align 1
  %239 = zext i8 %238 to i32
  %240 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 noundef %239)
  br label %241

241:                                              ; preds = %234
  %242 = load i32, i32* %2, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %2, align 4
  br label %228, !llvm.loop !18

244:                                              ; preds = %228
  %245 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 @print_test_data()
  store i32 %10, i32* %6, align 4
  br label %13

11:                                               ; preds = %2
  %12 = call i32 @test()
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = load i32, i32* %6, align 4
  call void @exit(i32 noundef %14) #7
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test() #0 {
  %1 = alloca [40 x i8], align 16
  %2 = alloca [40 x i8], align 16
  %3 = alloca [8 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bf_key_st, align 8
  %8 = alloca [2 x i64], align 16
  %9 = alloca [8 x i8], align 1
  %10 = alloca i64, align 8
  store i32 0, i32* %6, align 4
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %133, %0
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %136

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [2 x i8*], [2 x i8*]* @bf_key, i64 0, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strlen(i8* noundef %19) #6
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [2 x i8*], [2 x i8*]* @bf_key, i64 0, i64 %23
  %25 = load i8*, i8** %24, align 8
  call void @BF_set_key(%struct.bf_key_st* noundef %7, i32 noundef %21, i8* noundef %25)
  %26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [2 x [2 x i64]], [2 x [2 x i64]]* @bf_plain, i64 0, i64 %28
  %30 = getelementptr inbounds [2 x i64], [2 x i64]* %29, i64 0, i64 0
  %31 = load i64, i64* %30, align 16
  %32 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  store i64 %31, i64* %32, align 16
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [2 x [2 x i64]], [2 x [2 x i64]]* @bf_plain, i64 0, i64 %34
  %36 = getelementptr inbounds [2 x i64], [2 x i64]* %35, i64 0, i64 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  store i64 %37, i64* %38, align 8
  %39 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  call void @BF_encrypt(i64* noundef %39, %struct.bf_key_st* noundef %7, i32 noundef 1)
  %40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0))
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [2 x [2 x i64]], [2 x [2 x i64]]* @bf_cipher, i64 0, i64 %42
  %44 = getelementptr inbounds [2 x i64], [2 x i64]* %43, i64 0, i64 0
  %45 = bitcast i64* %44 to i8*
  %46 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %47 = bitcast i64* %46 to i8*
  %48 = call i32 @memcmp(i8* noundef %45, i8* noundef %47, i64 noundef 8) #6
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %85

50:                                               ; preds = %15
  %51 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0))
  %52 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %62, %50
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 2
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i64 noundef %60)
  br label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %53, !llvm.loop !19

65:                                               ; preds = %53
  %66 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %67 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %80, %65
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %69, 2
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [2 x [2 x i64]], [2 x [2 x i64]]* @bf_cipher, i64 0, i64 %73
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [2 x i64], [2 x i64]* %74, i64 0, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i64 noundef %78)
  br label %80

80:                                               ; preds = %71
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %68, !llvm.loop !20

83:                                               ; preds = %68
  store i32 1, i32* %6, align 4
  %84 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %15
  %86 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  call void @BF_encrypt(i64* noundef %86, %struct.bf_key_st* noundef %7, i32 noundef 0)
  %87 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0))
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [2 x [2 x i64]], [2 x [2 x i64]]* @bf_plain, i64 0, i64 %89
  %91 = getelementptr inbounds [2 x i64], [2 x i64]* %90, i64 0, i64 0
  %92 = bitcast i64* %91 to i8*
  %93 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %94 = bitcast i64* %93 to i8*
  %95 = call i32 @memcmp(i8* noundef %92, i8* noundef %94, i64 noundef 8) #6
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %132

97:                                               ; preds = %85
  %98 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0))
  %99 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %109, %97
  %101 = load i32, i32* %4, align 4
  %102 = icmp slt i32 %101, 2
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i64 noundef %107)
  br label %109

109:                                              ; preds = %103
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %4, align 4
  br label %100, !llvm.loop !21

112:                                              ; preds = %100
  %113 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %114 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %127, %112
  %116 = load i32, i32* %4, align 4
  %117 = icmp slt i32 %116, 2
  br i1 %117, label %118, label %130

118:                                              ; preds = %115
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [2 x [2 x i64]], [2 x [2 x i64]]* @bf_plain, i64 0, i64 %120
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [2 x i64], [2 x i64]* %121, i64 0, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i64 noundef %125)
  br label %127

127:                                              ; preds = %118
  %128 = load i32, i32* %4, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %4, align 4
  br label %115, !llvm.loop !22

130:                                              ; preds = %115
  %131 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %132

132:                                              ; preds = %130, %85
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %5, align 4
  br label %12, !llvm.loop !23

136:                                              ; preds = %12
  %137 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %243, %136
  %139 = load i32, i32* %5, align 4
  %140 = icmp slt i32 %139, 34
  br i1 %140, label %141, label %246

141:                                              ; preds = %138
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @ecb_data, i64 0, i64 %143
  %145 = getelementptr inbounds [8 x i8], [8 x i8]* %144, i64 0, i64 0
  call void @BF_set_key(%struct.bf_key_st* noundef %7, i32 noundef 8, i8* noundef %145)
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i64 0, i64 %147
  %149 = getelementptr inbounds [8 x i8], [8 x i8]* %148, i64 0, i64 0
  %150 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  call void @BF_ecb_encrypt(i8* noundef %149, i8* noundef %150, %struct.bf_key_st* noundef %7, i32 noundef 1)
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @cipher_data, i64 0, i64 %152
  %154 = getelementptr inbounds [8 x i8], [8 x i8]* %153, i64 0, i64 0
  %155 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %156 = call i32 @memcmp(i8* noundef %154, i8* noundef %155, i64 noundef 8) #6
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %195

158:                                              ; preds = %141
  %159 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i64 0, i64 0))
  %160 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %171, %158
  %162 = load i32, i32* %4, align 4
  %163 = icmp slt i32 %162, 8
  br i1 %163, label %164, label %174

164:                                              ; preds = %161
  %165 = load i32, i32* %4, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i32 noundef %169)
  br label %171

171:                                              ; preds = %164
  %172 = load i32, i32* %4, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %4, align 4
  br label %161, !llvm.loop !24

174:                                              ; preds = %161
  %175 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %176 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %177

177:                                              ; preds = %190, %174
  %178 = load i32, i32* %4, align 4
  %179 = icmp slt i32 %178, 8
  br i1 %179, label %180, label %193

180:                                              ; preds = %177
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @cipher_data, i64 0, i64 %182
  %184 = load i32, i32* %4, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [8 x i8], [8 x i8]* %183, i64 0, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i32 noundef %188)
  br label %190

190:                                              ; preds = %180
  %191 = load i32, i32* %4, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %4, align 4
  br label %177, !llvm.loop !25

193:                                              ; preds = %177
  store i32 1, i32* %6, align 4
  %194 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %195

195:                                              ; preds = %193, %141
  %196 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %197 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  call void @BF_ecb_encrypt(i8* noundef %196, i8* noundef %197, %struct.bf_key_st* noundef %7, i32 noundef 0)
  %198 = load i32, i32* %5, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i64 0, i64 %199
  %201 = getelementptr inbounds [8 x i8], [8 x i8]* %200, i64 0, i64 0
  %202 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %203 = call i32 @memcmp(i8* noundef %201, i8* noundef %202, i64 noundef 8) #6
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %242

205:                                              ; preds = %195
  %206 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i64 0, i64 0))
  %207 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %208

208:                                              ; preds = %218, %205
  %209 = load i32, i32* %4, align 4
  %210 = icmp slt i32 %209, 8
  br i1 %210, label %211, label %221

211:                                              ; preds = %208
  %212 = load i32, i32* %4, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 %213
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i32
  %217 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i32 noundef %216)
  br label %218

218:                                              ; preds = %211
  %219 = load i32, i32* %4, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %4, align 4
  br label %208, !llvm.loop !26

221:                                              ; preds = %208
  %222 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %223 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %224

224:                                              ; preds = %237, %221
  %225 = load i32, i32* %4, align 4
  %226 = icmp slt i32 %225, 8
  br i1 %226, label %227, label %240

227:                                              ; preds = %224
  %228 = load i32, i32* %5, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i64 0, i64 %229
  %231 = load i32, i32* %4, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [8 x i8], [8 x i8]* %230, i64 0, i64 %232
  %234 = load i8, i8* %233, align 1
  %235 = zext i8 %234 to i32
  %236 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i32 noundef %235)
  br label %237

237:                                              ; preds = %227
  %238 = load i32, i32* %4, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %4, align 4
  br label %224, !llvm.loop !27

240:                                              ; preds = %224
  %241 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %242

242:                                              ; preds = %240, %195
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %5, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %5, align 4
  br label %138, !llvm.loop !28

246:                                              ; preds = %138
  %247 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %248

248:                                              ; preds = %265, %246
  %249 = load i32, i32* %5, align 4
  %250 = icmp slt i32 %249, 25
  br i1 %250, label %251, label %268

251:                                              ; preds = %248
  %252 = load i32, i32* %5, align 4
  call void @BF_set_key(%struct.bf_key_st* noundef %7, i32 noundef %252, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @key_test, i64 0, i64 0))
  %253 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  call void @BF_ecb_encrypt(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @key_data, i64 0, i64 0), i8* noundef %253, %struct.bf_key_st* noundef %7, i32 noundef 1)
  %254 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %255 = load i32, i32* %5, align 4
  %256 = sub nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [25 x [8 x i8]], [25 x [8 x i8]]* @key_out, i64 0, i64 %257
  %259 = getelementptr inbounds [8 x i8], [8 x i8]* %258, i64 0, i64 0
  %260 = call i32 @memcmp(i8* noundef %254, i8* noundef %259, i64 noundef 8) #6
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %251
  %263 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %264

264:                                              ; preds = %262, %251
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %5, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %5, align 4
  br label %248, !llvm.loop !29

268:                                              ; preds = %248
  %269 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0))
  %270 = call i64 @strlen(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #6
  %271 = add i64 %270, 1
  store i64 %271, i64* %10, align 8
  call void @BF_set_key(%struct.bf_key_st* noundef %7, i32 noundef 16, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i64 0, i64 0))
  %272 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %272, i8 0, i64 40, i1 false)
  %273 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %273, i8 0, i64 40, i1 false)
  %274 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %274, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 0), i64 8, i1 false)
  %275 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %276 = load i64, i64* %10, align 8
  %277 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  call void @BF_cbc_encrypt(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0), i8* noundef %275, i64 noundef %276, %struct.bf_key_st* noundef %7, i8* noundef %277, i32 noundef 1)
  %278 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %279 = call i32 @memcmp(i8* noundef %278, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @cbc_ok, i64 0, i64 0), i64 noundef 32) #6
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %297

281:                                              ; preds = %268
  store i32 1, i32* %6, align 4
  %282 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %283

283:                                              ; preds = %293, %281
  %284 = load i32, i32* %4, align 4
  %285 = icmp slt i32 %284, 32
  br i1 %285, label %286, label %296

286:                                              ; preds = %283
  %287 = load i32, i32* %4, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 %288
  %290 = load i8, i8* %289, align 1
  %291 = zext i8 %290 to i32
  %292 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i32 noundef %291)
  br label %293

293:                                              ; preds = %286
  %294 = load i32, i32* %4, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %4, align 4
  br label %283, !llvm.loop !30

296:                                              ; preds = %283
  br label %297

297:                                              ; preds = %296, %268
  %298 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %298, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 0), i64 8, i1 false)
  %299 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %300 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  %301 = load i64, i64* %10, align 8
  %302 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  call void @BF_cbc_encrypt(i8* noundef %299, i8* noundef %300, i64 noundef %301, %struct.bf_key_st* noundef %7, i8* noundef %302, i32 noundef 0)
  %303 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  %304 = call i64 @strlen(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0)) #6
  %305 = add i64 %304, 1
  %306 = call i32 @memcmp(i8* noundef %303, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0), i64 noundef %305) #6
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %297
  %309 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %310

310:                                              ; preds = %308, %297
  %311 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.39, i64 0, i64 0))
  call void @BF_set_key(%struct.bf_key_st* noundef %7, i32 noundef 16, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i64 0, i64 0))
  %312 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %312, i8 0, i64 40, i1 false)
  %313 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %313, i8 0, i64 40, i1 false)
  %314 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %314, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 0), i64 8, i1 false)
  store i32 0, i32* %5, align 4
  %315 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %316 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  call void @BF_cfb64_encrypt(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0), i8* noundef %315, i64 noundef 13, %struct.bf_key_st* noundef %7, i8* noundef %316, i32* noundef %5, i32 noundef 1)
  %317 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 13
  %318 = load i64, i64* %10, align 8
  %319 = sub i64 %318, 13
  %320 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  call void @BF_cfb64_encrypt(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 13), i8* noundef %317, i64 noundef %319, %struct.bf_key_st* noundef %7, i8* noundef %320, i32* noundef %5, i32 noundef 1)
  %321 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %322 = load i64, i64* %10, align 8
  %323 = trunc i64 %322 to i32
  %324 = sext i32 %323 to i64
  %325 = call i32 @memcmp(i8* noundef %321, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @cfb64_ok, i64 0, i64 0), i64 noundef %324) #6
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %345

327:                                              ; preds = %310
  store i32 1, i32* %6, align 4
  %328 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.40, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %329

329:                                              ; preds = %341, %327
  %330 = load i32, i32* %4, align 4
  %331 = load i64, i64* %10, align 8
  %332 = trunc i64 %331 to i32
  %333 = icmp slt i32 %330, %332
  br i1 %333, label %334, label %344

334:                                              ; preds = %329
  %335 = load i32, i32* %4, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 %336
  %338 = load i8, i8* %337, align 1
  %339 = zext i8 %338 to i32
  %340 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i32 noundef %339)
  br label %341

341:                                              ; preds = %334
  %342 = load i32, i32* %4, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %4, align 4
  br label %329, !llvm.loop !31

344:                                              ; preds = %329
  br label %345

345:                                              ; preds = %344, %310
  store i32 0, i32* %5, align 4
  %346 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %346, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 0), i64 8, i1 false)
  %347 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %348 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  %349 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  call void @BF_cfb64_encrypt(i8* noundef %347, i8* noundef %348, i64 noundef 17, %struct.bf_key_st* noundef %7, i8* noundef %349, i32* noundef %5, i32 noundef 0)
  %350 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 17
  %351 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 17
  %352 = load i64, i64* %10, align 8
  %353 = sub i64 %352, 17
  %354 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  call void @BF_cfb64_encrypt(i8* noundef %350, i8* noundef %351, i64 noundef %353, %struct.bf_key_st* noundef %7, i8* noundef %354, i32* noundef %5, i32 noundef 0)
  %355 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  %356 = load i64, i64* %10, align 8
  %357 = trunc i64 %356 to i32
  %358 = sext i32 %357 to i64
  %359 = call i32 @memcmp(i8* noundef %355, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0), i64 noundef %358) #6
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %363

361:                                              ; preds = %345
  %362 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %363

363:                                              ; preds = %361, %345
  %364 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i64 0, i64 0))
  call void @BF_set_key(%struct.bf_key_st* noundef %7, i32 noundef 16, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @cbc_key, i64 0, i64 0))
  %365 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %365, i8 0, i64 40, i1 false)
  %366 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %366, i8 0, i64 40, i1 false)
  %367 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %367, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 0), i64 8, i1 false)
  store i32 0, i32* %5, align 4
  %368 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %369 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  call void @BF_ofb64_encrypt(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0), i8* noundef %368, i64 noundef 13, %struct.bf_key_st* noundef %7, i8* noundef %369, i32* noundef %5)
  %370 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 13
  %371 = load i64, i64* %10, align 8
  %372 = sub i64 %371, 13
  %373 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  call void @BF_ofb64_encrypt(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 13), i8* noundef %370, i64 noundef %372, %struct.bf_key_st* noundef %7, i8* noundef %373, i32* noundef %5)
  %374 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %375 = load i64, i64* %10, align 8
  %376 = trunc i64 %375 to i32
  %377 = sext i32 %376 to i64
  %378 = call i32 @memcmp(i8* noundef %374, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @ofb64_ok, i64 0, i64 0), i64 noundef %377) #6
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %398

380:                                              ; preds = %363
  store i32 1, i32* %6, align 4
  %381 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.43, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %382

382:                                              ; preds = %394, %380
  %383 = load i32, i32* %4, align 4
  %384 = load i64, i64* %10, align 8
  %385 = trunc i64 %384 to i32
  %386 = icmp slt i32 %383, %385
  br i1 %386, label %387, label %397

387:                                              ; preds = %382
  %388 = load i32, i32* %4, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 %389
  %391 = load i8, i8* %390, align 1
  %392 = zext i8 %391 to i32
  %393 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i32 noundef %392)
  br label %394

394:                                              ; preds = %387
  %395 = load i32, i32* %4, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %4, align 4
  br label %382, !llvm.loop !32

397:                                              ; preds = %382
  br label %398

398:                                              ; preds = %397, %363
  store i32 0, i32* %5, align 4
  %399 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %399, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @cbc_iv, i64 0, i64 0), i64 8, i1 false)
  %400 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %401 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  %402 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  call void @BF_ofb64_encrypt(i8* noundef %400, i8* noundef %401, i64 noundef 17, %struct.bf_key_st* noundef %7, i8* noundef %402, i32* noundef %5)
  %403 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 17
  %404 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 17
  %405 = load i64, i64* %10, align 8
  %406 = sub i64 %405, 17
  %407 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  call void @BF_ofb64_encrypt(i8* noundef %403, i8* noundef %404, i64 noundef %406, %struct.bf_key_st* noundef %7, i8* noundef %407, i32* noundef %5)
  %408 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  %409 = load i64, i64* %10, align 8
  %410 = trunc i64 %409 to i32
  %411 = sext i32 %410 to i64
  %412 = call i32 @memcmp(i8* noundef %408, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @cbc_data, i64 0, i64 0), i64 noundef %411) #6
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %416

414:                                              ; preds = %398
  %415 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.44, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %416

416:                                              ; preds = %414, %398
  %417 = load i32, i32* %6, align 4
  ret i32 %417
}

declare dso_local void @BF_set_key(%struct.bf_key_st* noundef, i32 noundef, i8* noundef) #1

declare dso_local void @BF_encrypt(i64* noundef, %struct.bf_key_st* noundef, i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local void @BF_ecb_encrypt(i8* noundef, i8* noundef, %struct.bf_key_st* noundef, i32 noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local void @BF_cbc_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.bf_key_st* noundef, i8* noundef, i32 noundef) #1

declare dso_local void @BF_cfb64_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.bf_key_st* noundef, i8* noundef, i32* noundef, i32 noundef) #1

declare dso_local void @BF_ofb64_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.bf_key_st* noundef, i8* noundef, i32* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { noreturn nounwind }

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
