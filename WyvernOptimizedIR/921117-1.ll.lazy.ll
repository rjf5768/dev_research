; ModuleID = './921117-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/921117-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { [11 x i8], i32 }

@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@cell = dso_local global %struct.s zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @check(i64 %0, i64 %1) #0 {
  %3 = alloca { i64, i64 }, align 8
  %tmpcast = bitcast { i64, i64 }* %3 to %struct.s*
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i64 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i64 0, i32 1
  store i64 %1, i64* %5, align 8
  %6 = getelementptr inbounds %struct.s, %struct.s* %tmpcast, i64 0, i32 1
  %7 = load i32, i32* %6, align 4
  %.not = icmp eq i32 %7, 99
  br i1 %.not, label %9, label %8

8:                                                ; preds = %2
  br label %12

9:                                                ; preds = %2
  %10 = bitcast { i64, i64 }* %3 to i8*
  %11 = call i32 @strcmp(i8* noundef nonnull %10, i8* noundef nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)) #5
  br label %12

12:                                               ; preds = %9, %8
  %.0 = phi i32 [ 1, %8 ], [ %11, %9 ]
  ret i32 %.0
}

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  store i32 99, i32* getelementptr inbounds (%struct.s, %struct.s* @cell, i64 0, i32 1), align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(11) getelementptr inbounds (%struct.s, %struct.s* @cell, i64 0, i32 0, i64 0), i8* noundef nonnull align 1 dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 11, i1 false) #5
  %1 = load i64, i64* bitcast (%struct.s* @cell to i64*), align 8
  %2 = load i64, i64* bitcast (i8* getelementptr inbounds (%struct.s, %struct.s* @cell, i64 0, i32 0, i64 8) to i64*), align 8
  %3 = call i32 @check(i64 %1, i64 %2)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %0
  call void @abort() #6
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %0
  call void @exit(i32 noundef 0) #6
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %5, %4
  unreachable
}

declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
