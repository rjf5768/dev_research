; ModuleID = './pr68143_1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68143_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stuff = type { i32, i32, i32, i32, i32, i8*, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(%struct.stuff* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.stuff, %struct.stuff* %0, i64 0, i32 6
  %3 = load i32, i32* %2, align 8
  %.not = icmp eq i32 %3, 2
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  call void @abort() #3
  unreachable

5:                                                ; preds = %1
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.stuff, align 8
  %4 = bitcast %struct.stuff* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %5 = getelementptr inbounds %struct.stuff, %struct.stuff* %3, i64 0, i32 0
  store i32 100, i32* %5, align 8
  %6 = getelementptr inbounds %struct.stuff, %struct.stuff* %3, i64 0, i32 3
  store i32 100, i32* %6, align 4
  %7 = getelementptr inbounds %struct.stuff, %struct.stuff* %3, i64 0, i32 6
  store i32 2, i32* %7, align 8
  call void @bar(%struct.stuff* noundef nonnull %3)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
