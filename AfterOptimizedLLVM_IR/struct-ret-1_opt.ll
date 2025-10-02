; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/struct-ret-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/struct-ret-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.B = type { double, [3 x i32] }
%struct.X = type { [33 x i8], i8 }

@c1 = dso_local global i8 97, align 1
@c2 = dso_local global i8 127, align 1
@c3 = dso_local global i8 -128, align 1
@c4 = dso_local global i8 -1, align 1
@c5 = dso_local global i8 -1, align 1
@d1 = dso_local global double 1.000000e-01, align 8
@d2 = dso_local global double 2.000000e-01, align 8
@d3 = dso_local global double 3.000000e-01, align 8
@d4 = dso_local global double 4.000000e-01, align 8
@d5 = dso_local global double 5.000000e-01, align 8
@d6 = dso_local global double 6.000000e-01, align 8
@d7 = dso_local global double 0x3FE6666666666666, align 8
@d8 = dso_local global double 8.000000e-01, align 8
@d9 = dso_local global double 9.000000e-01, align 8
@B1 = dso_local global %struct.B { double 1.000000e-01, [3 x i32] [i32 1, i32 2, i32 3] }, align 8
@B2 = dso_local global %struct.B { double 2.000000e-01, [3 x i32] [i32 5, i32 4, i32 3] }, align 8
@X1 = dso_local global %struct.X { [33 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEF\00", i8 71 }, align 1
@X2 = dso_local global %struct.X { [33 x i8] c"123\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 57 }, align 1
@X3 = dso_local global %struct.X { [33 x i8] c"return-return-return\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 82 }, align 1
@f.xr = internal global %struct.X { [33 x i8] c"return val\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 82 }, align 1
@out = dso_local global [100 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [63 x i8] c"X f(B,char,double,B):({%g,{%d,%d,%d}},'%c',%g,{%g,{%d,%d,%d}})\00", align 1
@fp = dso_local global void (%struct.X*, %struct.B*, i8, double, %struct.B*)* @f, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(%struct.X* noalias sret(%struct.X) align 1 %0, %struct.B* noundef byval(%struct.B) align 8 %1, i8 noundef signext %2, double noundef %3, %struct.B* noundef byval(%struct.B) align 8 %4) #0 {
  %6 = alloca i8, align 1
  %7 = alloca double, align 8
  store i8 %2, i8* %6, align 1
  store double %3, double* %7, align 8
  %8 = bitcast %struct.X* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds (%struct.X, %struct.X* @f.xr, i32 0, i32 0, i32 0), i64 34, i1 false)
  %9 = load i8, i8* %6, align 1
  %10 = getelementptr inbounds %struct.X, %struct.X* %0, i32 0, i32 1
  store i8 %9, i8* %10, align 1
  %11 = getelementptr inbounds %struct.B, %struct.B* %1, i32 0, i32 0
  %12 = load double, double* %11, align 8
  %13 = getelementptr inbounds %struct.B, %struct.B* %1, i32 0, i32 1
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.B, %struct.B* %1, i32 0, i32 1
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.B, %struct.B* %1, i32 0, i32 1
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  %21 = load i32, i32* %20, align 8
  %22 = load i8, i8* %6, align 1
  %23 = sext i8 %22 to i32
  %24 = load double, double* %7, align 8
  %25 = getelementptr inbounds %struct.B, %struct.B* %4, i32 0, i32 0
  %26 = load double, double* %25, align 8
  %27 = getelementptr inbounds %struct.B, %struct.B* %4, i32 0, i32 1
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %27, i64 0, i64 0
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.B, %struct.B* %4, i32 0, i32 1
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %30, i64 0, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.B, %struct.B* %4, i32 0, i32 1
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %33, i64 0, i64 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @out, i64 0, i64 0), i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), double noundef %12, i32 noundef %15, i32 noundef %18, i32 noundef %21, i32 noundef %23, double noundef %24, double noundef %26, i32 noundef %29, i32 noundef %32, i32 noundef %35) #5
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.X, align 1
  %3 = alloca [100 x i8], align 16
  %4 = alloca %struct.X, align 1
  %5 = alloca %struct.X, align 1
  store i32 0, i32* %1, align 4
  %6 = load i8, i8* @c2, align 1
  %7 = load double, double* @d3, align 8
  call void @f(%struct.X* sret(%struct.X) align 1 %4, %struct.B* noundef byval(%struct.B) align 8 @B1, i8 noundef signext %6, double noundef %7, %struct.B* noundef byval(%struct.B) align 8 @B2)
  %8 = bitcast %struct.X* %2 to i8*
  %9 = bitcast %struct.X* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 %9, i64 34, i1 false)
  %10 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %11 = call i8* @strcpy(i8* noundef %10, i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @out, i64 0, i64 0)) #5
  %12 = getelementptr inbounds %struct.X, %struct.X* %2, i32 0, i32 1
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.X, %struct.X* %2, i32 0, i32 0
  %14 = getelementptr inbounds [33 x i8], [33 x i8]* %13, i64 0, i64 0
  store i8 0, i8* %14, align 1
  %15 = load void (%struct.X*, %struct.B*, i8, double, %struct.B*)*, void (%struct.X*, %struct.B*, i8, double, %struct.B*)** @fp, align 8
  %16 = load i8, i8* @c2, align 1
  %17 = load double, double* @d3, align 8
  call void %15(%struct.X* sret(%struct.X) align 1 %5, %struct.B* noundef byval(%struct.B) align 8 @B1, i8 noundef signext %16, double noundef %17, %struct.B* noundef byval(%struct.B) align 8 @B2)
  %18 = bitcast %struct.X* %2 to i8*
  %19 = bitcast %struct.X* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %19, i64 34, i1 false)
  %20 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %21 = call i32 @strcmp(i8* noundef %20, i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @out, i64 0, i64 0)) #6
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %0
  call void @abort() #7
  unreachable

24:                                               ; preds = %0
  call void @exit(i32 noundef 0) #7
  unreachable
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: noreturn
declare dso_local void @abort() #4

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
