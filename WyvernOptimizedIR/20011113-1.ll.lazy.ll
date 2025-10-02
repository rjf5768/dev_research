; ModuleID = './20011113-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20011113-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t = type { i32, [4 x i64] }
%struct.U = type { [3 x i64] }

@t = dso_local global { i8, i8, i8, i8, [4 x i64] } { i8 26, i8 0, i8 0, i8 0, [4 x i64] [i64 0, i64 21, i64 22, i64 23] }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.t* @foo(%struct.t* nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.U, align 8
  %3 = alloca %struct.U, align 8
  %4 = bitcast %struct.U* %3 to i8*
  %5 = getelementptr inbounds %struct.t, %struct.t* %0, i64 0, i32 1, i64 1
  %6 = bitcast i64* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %4, i8* noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %7 = bitcast %struct.U* %2 to i8*
  %8 = bitcast %struct.U* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %7, i8* noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %9 = getelementptr %struct.t, %struct.t* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 255
  %13 = call %struct.t* @bar(%struct.U* noundef nonnull byval(%struct.U) align 8 %2, i32 noundef %12)
  ret %struct.t* %13
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.t* @bar(%struct.U* nocapture noundef readonly byval(%struct.U) align 8 %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.U, %struct.U* %0, i64 0, i32 0, i64 0
  %4 = load i64, i64* %3, align 8
  %.not = icmp eq i64 %4, 21
  br i1 %.not, label %5, label %11

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.U, %struct.U* %0, i64 0, i32 0, i64 1
  %7 = load i64, i64* %6, align 8
  %.not1 = icmp eq i64 %7, 22
  br i1 %.not1, label %8, label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.U, %struct.U* %0, i64 0, i32 0, i64 2
  %10 = load i64, i64* %9, align 8
  %.not2 = icmp eq i64 %10, 23
  br i1 %.not2, label %12, label %11

11:                                               ; preds = %8, %5, %2
  call void @abort() #4
  unreachable

12:                                               ; preds = %8
  ret %struct.t* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.t* @baz(%struct.t* nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.U, align 8
  %3 = alloca %struct.U, align 8
  %4 = getelementptr inbounds %struct.U, %struct.U* %2, i64 0, i32 0, i64 0
  store i64 4886718345, i64* %4, align 8
  %5 = getelementptr inbounds %struct.U, %struct.U* %2, i64 0, i32 0, i64 1
  store i64 68414056839, i64* %5, align 8
  %6 = getelementptr inbounds %struct.U, %struct.U* %2, i64 0, i32 0, i64 2
  store i64 46118400291, i64* %6, align 8
  %7 = bitcast %struct.U* %3 to i8*
  %8 = getelementptr inbounds %struct.t, %struct.t* %0, i64 0, i32 1, i64 1
  %9 = bitcast i64* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %7, i8* noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %10 = bitcast %struct.U* %2 to i8*
  %11 = bitcast %struct.U* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %10, i8* noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false)
  %12 = getelementptr %struct.t, %struct.t* %0, i64 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = call %struct.t* @bar(%struct.U* noundef nonnull byval(%struct.U) align 8 %2, i32 noundef %15)
  ret %struct.t* %16
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = call %struct.t* @baz(%struct.t* noundef bitcast ({ i8, i8, i8, i8, [4 x i64] }* @t to %struct.t*))
  %2 = call %struct.t* @foo(%struct.t* noundef bitcast ({ i8, i8, i8, i8, [4 x i64] }* @t to %struct.t*))
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
