; ModuleID = './bitfld-5.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bitfld-5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.s = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 41, i8 0, i8 0, i8 0, i8 0, i8 12, i8 0, i8 0 }, align 8
@__const.main.t = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 9, i8 0, i8 0, i8 0, i8 0, i8 12, i8 0, i8 0 }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @g(i64 noundef %0, i64 noundef %1) #0 {
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !4
  %.not = icmp eq i64 %0, %1
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  call void @abort() #4
  unreachable

4:                                                ; preds = %2
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i64 %0, i64 noundef %1) #0 {
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !5
  %3 = lshr i64 %0, 2
  %4 = and i64 %3, 1099511627775
  call void @g(i64 noundef %4, i64 noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @f(i64 13194139533353, i64 noundef 10)
  call void @f(i64 13194139533321, i64 noundef 1099511627778)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 273}
!5 = !{i64 387}
