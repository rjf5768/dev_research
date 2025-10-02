; ModuleID = './struct-ret-1.ll'
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
define dso_local void @f(%struct.X* noalias nocapture writeonly sret(%struct.X) align 1 %0, %struct.B* nocapture noundef readonly byval(%struct.B) align 8 %1, i8 noundef signext %2, double noundef %3, %struct.B* nocapture noundef readonly byval(%struct.B) align 8 %4) #0 {
  %6 = getelementptr inbounds %struct.X, %struct.X* %0, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(34) %6, i8* noundef nonnull align 1 dereferenceable(34) getelementptr inbounds (%struct.X, %struct.X* @f.xr, i64 0, i32 0, i64 0), i64 34, i1 false)
  %7 = getelementptr inbounds %struct.X, %struct.X* %0, i64 0, i32 1
  store i8 %2, i8* %7, align 1
  %8 = getelementptr inbounds %struct.B, %struct.B* %1, i64 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = getelementptr inbounds %struct.B, %struct.B* %1, i64 0, i32 1, i64 0
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds %struct.B, %struct.B* %1, i64 0, i32 1, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.B, %struct.B* %1, i64 0, i32 1, i64 2
  %15 = load i32, i32* %14, align 8
  %16 = sext i8 %2 to i32
  %17 = getelementptr inbounds %struct.B, %struct.B* %4, i64 0, i32 0
  %18 = load double, double* %17, align 8
  %19 = getelementptr inbounds %struct.B, %struct.B* %4, i64 0, i32 1, i64 0
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.B, %struct.B* %4, i64 0, i32 1, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.B, %struct.B* %4, i64 0, i32 1, i64 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([100 x i8], [100 x i8]* @out, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), double noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %16, double noundef %3, double noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = alloca [100 x i8], align 16
  %2 = alloca %struct.X, align 1
  %3 = alloca %struct.X, align 1
  %4 = load i8, i8* @c2, align 1
  %5 = load double, double* @d3, align 8
  call void @f(%struct.X* nonnull sret(%struct.X) align 1 %2, %struct.B* noundef nonnull byval(%struct.B) align 8 @B1, i8 noundef signext %4, double noundef %5, %struct.B* noundef nonnull byval(%struct.B) align 8 @B2)
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %7 = call i8* @strcpy(i8* noundef nonnull %6, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([100 x i8], [100 x i8]* @out, i64 0, i64 0)) #6
  %8 = load void (%struct.X*, %struct.B*, i8, double, %struct.B*)*, void (%struct.X*, %struct.B*, i8, double, %struct.B*)** @fp, align 8
  %9 = load i8, i8* @c2, align 1
  %10 = load double, double* @d3, align 8
  call void %8(%struct.X* nonnull sret(%struct.X) align 1 %3, %struct.B* noundef nonnull byval(%struct.B) align 8 @B1, i8 noundef signext %9, double noundef %10, %struct.B* noundef nonnull byval(%struct.B) align 8 @B2) #6
  %11 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %12 = call i32 @strcmp(i8* noundef nonnull %11, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([100 x i8], [100 x i8]* @out, i64 0, i64 0)) #7
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %14, label %13

13:                                               ; preds = %0
  call void @abort() #8
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %0
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %14, %13
  unreachable
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

; Function Attrs: noreturn
declare dso_local void @abort() #5

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
