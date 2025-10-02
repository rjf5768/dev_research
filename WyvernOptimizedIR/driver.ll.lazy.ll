; ModuleID = './driver.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/ecbdes/driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.des_ks_struct = type { %union.anon }
%union.anon = type { [2 x i64] }

@key_data = internal global [34 x [8 x i8]] [[8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"0\00\00\00\00\00\00\00", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] zeroinitializer, [8 x i8] c"\FE\DC\BA\98vT2\10", [8 x i8] c"|\A1\10EJ\1AnW", [8 x i8] c"\011\D9a\9D\C17n", [8 x i8] c"\07\A1\13>J\0B&\86", [8 x i8] c"8IgL&\021\9E", [8 x i8] c"\04\B9\15\BAC\FE\B5\B6", [8 x i8] c"\01\13\B9p\FD4\F2\CE", [8 x i8] c"\01p\F1uF\8F\B5\E6", [8 x i8] c"C)\7F\AD8\E3s\FE", [8 x i8] c"\07\A7\13pE\DA*\16", [8 x i8] c"\04h\91\04\C2\FD;/", [8 x i8] c"7\D0k\B5\16\CBuF", [8 x i8] c"\1F\08&\0D\1A\C2F^", [8 x i8] c"X@#d\1A\BAav", [8 x i8] c"\02X\16\16F)\B0\07", [8 x i8] c"Iy>\BCy\B3%\8F", [8 x i8] c"O\B0^\15\15\ABs\A7", [8 x i8] c"I\E9]mL\A2)\BF", [8 x i8] c"\01\83\10\DC@\9B&\D6", [8 x i8] c"\1CX\7F\1C\13\92O\EF", [8 x i8] c"\01\01\01\01\01\01\01\01", [8 x i8] c"\1F\1F\1F\1F\0E\0E\0E\0E", [8 x i8] c"\E0\FE\E0\FE\F1\FE\F1\FE", [8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\FE\DC\BA\98vT2\10"], align 16
@.str = private unnamed_addr constant [15 x i8] c"Key %d error!\0A\00", align 1
@plain_data = internal global [34 x [8 x i8]] [[8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"\10\00\00\00\00\00\00\01", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] zeroinitializer, [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01\A1\D6\D09wgB", [8 x i8] c"\\\D5L\A8=\EFW\DA", [8 x i8] c"\02H\D48\06\F6qr", [8 x i8] c"QEKX-\DFD\0A", [8 x i8] c"B\FDD0YW\7F\A2", [8 x i8] c"\05\9B^\08Q\CF\14:", [8 x i8] c"\07V\D8\E0wGa\D2", [8 x i8] c"v%\14\B8)\BFHj", [8 x i8] c";\DD\11\90I7(\02", [8 x i8] c"&\95_h5\AF`\9A", [8 x i8] c"\16M^@O'R2", [8 x i8] c"k\05n\18u\9F\\\CA", [8 x i8] c"\00K\D6\EF\09\17`b", [8 x i8] c"H\0D9\00n\E7b\F2", [8 x i8] c"Cu@\C8i\8F<\FA", [8 x i8] c"\07-C\A0w\07R\92", [8 x i8] c"\02\FEUw\81\17\F1*", [8 x i8] c"\1D\9D\\P\18\F7(\C2", [8 x i8] c"0U2(mo)Z", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] zeroinitializer, [8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF"], align 16
@cipher_data = internal global [34 x [8 x i8]] [[8 x i8] c"\8C\A6M\E9\C1\B1#\A7", [8 x i8] c"sY\B2\16>N\DCX", [8 x i8] c"\95\8Enbz\05U{", [8 x i8] c"\F4\03y\AB\9E\0E\C53", [8 x i8] c"\17f\8D\FCr\92S-", [8 x i8] c"\8AZ\E1\F8\1A\B8\F2\DD", [8 x i8] c"\8C\A6M\E9\C1\B1#\A7", [8 x i8] c"\ED9\D9P\FAt\BC\C4", [8 x i8] c"i\0F[\0D\9A&\93\9B", [8 x i8] c"z8\9D\105K\D2q", [8 x i8] c"\86\8E\BBQ\CA\B4Y\9A", [8 x i8] c"qx\87n\01\F1\9B*", [8 x i8] c"\AF7\FBB\1F\8C@\95", [8 x i8] c"\86\A5`\F1\0E\C6\D8[", [8 x i8] c"\0C\D3\DA\02\00!\DC\09", [8 x i8] c"\EAgk,\B7\DB+z", [8 x i8] c"\DF\D6J\81\\\AF\1A\0F", [8 x i8] c"\\Q<\9CH\86\C0\88", [8 x i8] c"\0A*\EE\AE?\F4\ABw", [8 x i8] c"\EF\1B\F0>]\FAWZ", [8 x i8] c"\88\BF\0D\B6\D7\0D\EEV", [8 x i8] c"\A1\F9\91UA\02\0BV", [8 x i8] c"o\BF\1C\AF\CF\FD\05V", [8 x i8] c"/\22\E4\9B\AB|\A1\AC", [8 x i8] c"Zka,\C2l\CEJ", [8 x i8] c"_L\03\8E\D1+.A", [8 x i8] c"c\FA\C0\D04\D9\F7\93", [8 x i8] c"a{:\0C\E8\F0q\00", [8 x i8] c"\DB\95\86\05\F8\C8\C6\06", [8 x i8] c"\ED\BF\D1\C6l)\CC\C7", [8 x i8] c"5UP\B2\15\0E$Q", [8 x i8] c"\CA\AA\AFM\EA\F1\DB\AE", [8 x i8] c"\D5\D4O\F7 h=\0D", [8 x i8] c"*+\B0\08\DF\97\C2\F2"], align 16
@.str.1 = private unnamed_addr constant [19 x i8] c"Encryption error.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Encrypted correctly.\0A\00", align 1
@.str.3 = private unnamed_addr constant [147 x i8] c"Driver for Data Encryption Standard benchmark.\0A\0Ausage: %s <size> (where size <= 34)\0A\0Asize is the number of processing node for hardware version \0A\0A\00", align 1
@str = private unnamed_addr constant [21 x i8] c"Encrypted correctly.\00", align 1
@str.1 = private unnamed_addr constant [18 x i8] c"Encryption error.\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @driver(i32 noundef %0) #0 {
  %2 = alloca [34 x [8 x i8]], align 16
  %3 = alloca [34 x [16 x %struct.des_ks_struct]], align 16
  br label %4

4:                                                ; preds = %16, %1
  %.01 = phi i32 [ 0, %1 ], [ %17, %16 ]
  %5 = icmp ult i32 %.01, 34
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = zext i32 %.01 to i64
  %8 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @key_data, i64 0, i64 %7, i64 0
  %9 = bitcast i8* %8 to [8 x i8]*
  %10 = zext i32 %.01 to i64
  %11 = getelementptr inbounds [34 x [16 x %struct.des_ks_struct]], [34 x [16 x %struct.des_ks_struct]]* %3, i64 0, i64 %10, i64 0
  %12 = call i32 @des_key_sched([8 x i8]* noundef nonnull %9, %struct.des_ks_struct* noundef nonnull %11) #7
  %.not4 = icmp eq i32 %12, 0
  br i1 %.not4, label %15, label %13

13:                                               ; preds = %6
  %14 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 noundef %.01) #7
  call void @exit(i32 noundef -1) #8
  unreachable

15:                                               ; preds = %6
  br label %16

16:                                               ; preds = %15
  %17 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !4

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %36, %18
  %.0 = phi i32 [ 0, %18 ], [ %37, %36 ]
  %20 = icmp ult i32 %.0, 1000000
  br i1 %20, label %21, label %38

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %33, %21
  %.1 = phi i32 [ 0, %21 ], [ %34, %33 ]
  %23 = icmp slt i32 %.1, %0
  br i1 %23, label %24, label %35

24:                                               ; preds = %22
  %25 = zext i32 %.1 to i64
  %26 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i64 0, i64 %25, i64 0
  %27 = bitcast i8* %26 to [8 x i8]*
  %28 = zext i32 %.1 to i64
  %29 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* %2, i64 0, i64 %28, i64 0
  %30 = bitcast i8* %29 to [8 x i8]*
  %31 = zext i32 %.1 to i64
  %32 = getelementptr inbounds [34 x [16 x %struct.des_ks_struct]], [34 x [16 x %struct.des_ks_struct]]* %3, i64 0, i64 %31, i64 0
  call void @des_ecb_encrypt([8 x i8]* noundef nonnull %27, [8 x i8]* noundef nonnull %30, %struct.des_ks_struct* noundef nonnull %32, i32 noundef 1) #7
  br label %33

33:                                               ; preds = %24
  %34 = add nuw nsw i32 %.1, 1
  br label %22, !llvm.loop !6

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35
  %37 = add nuw nsw i32 %.0, 1
  br label %19, !llvm.loop !7

38:                                               ; preds = %19
  %39 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* %2, i64 0, i64 0, i64 0
  %40 = shl nsw i32 %0, 3
  %41 = sext i32 %40 to i64
  %bcmp = call i32 @bcmp(i8* getelementptr inbounds ([34 x [8 x i8]], [34 x [8 x i8]]* @cipher_data, i64 0, i64 0, i64 0), i8* nonnull %39, i64 %41)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %43, label %42

42:                                               ; preds = %38
  %puts3 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str.1, i64 0, i64 0))
  br label %44

43:                                               ; preds = %38
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %43, %42
  ret void
}

declare dso_local i32 @des_key_sched([8 x i8]* noundef, %struct.des_ks_struct* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

declare dso_local void @des_ecb_encrypt([8 x i8]* noundef, [8 x i8]* noundef, %struct.des_ks_struct* noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #4 {
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %6, label %3

3:                                                ; preds = %2
  %4 = load i8*, i8** %1, align 8
  %5 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([147 x i8], [147 x i8]* @.str.3, i64 0, i64 0), i8* noundef %4) #7
  call void @exit(i32 noundef -1) #8
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8*, i8** %1, i64 1
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @atoi(i8* noundef %8) #9
  %10 = icmp sgt i32 %9, 34
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load i8*, i8** %1, align 8
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([147 x i8], [147 x i8]* @.str.3, i64 0, i64 0), i8* noundef %12) #7
  call void @exit(i32 noundef -1) #8
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %6
  call void @driver(i32 noundef %9)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %14, %11, %3
  unreachable
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly willreturn }

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
