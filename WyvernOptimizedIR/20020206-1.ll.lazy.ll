; ModuleID = './20020206-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020206-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i32, i32, i32 }

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local { i64, i32 } @bar() #0 {
  %1 = alloca %struct.A, align 4
  %2 = alloca { i64, i32 }, align 8
  %3 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 0
  store i32 176, i32* %3, align 4
  %4 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 1
  store i32 52, i32* %4, align 4
  %5 = getelementptr inbounds %struct.A, %struct.A* %1, i64 0, i32 2
  store i32 31, i32* %5, align 4
  %6 = bitcast { i64, i32 }* %2 to i8*
  %7 = bitcast %struct.A* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %6, i8* noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false)
  %8 = load { i64, i32 }, { i64, i32 }* %2, align 8
  ret { i64, i32 } %8
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz(%struct.A* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.A, %struct.A* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 4
  %.not = icmp eq i32 %3, 176
  br i1 %.not, label %4, label %10

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.A, %struct.A* %0, i64 0, i32 1
  %6 = load i32, i32* %5, align 4
  %.not1 = icmp eq i32 %6, 52
  br i1 %.not1, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.A, %struct.A* %0, i64 0, i32 2
  %9 = load i32, i32* %8, align 4
  %.not2 = icmp eq i32 %9, 31
  br i1 %.not2, label %11, label %10

10:                                               ; preds = %7, %4, %1
  call void @abort() #5
  unreachable

11:                                               ; preds = %7
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #4 {
  %1 = alloca %struct.A, align 4
  %2 = alloca %struct.A, align 4
  %3 = alloca { i64, i32 }, align 8
  %4 = call { i64, i32 } @bar()
  store { i64, i32 } %4, { i64, i32 }* %3, align 8
  %5 = bitcast %struct.A* %2 to i8*
  %6 = bitcast { i64, i32 }* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %5, i8* noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  %7 = bitcast %struct.A* %1 to i8*
  %8 = bitcast %struct.A* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %7, i8* noundef nonnull align 4 dereferenceable(12) %8, i64 12, i1 false)
  call void @baz(%struct.A* noundef nonnull %1)
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
