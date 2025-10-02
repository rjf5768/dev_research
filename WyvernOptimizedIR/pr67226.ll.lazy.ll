; ModuleID = './pr67226.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr67226.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assembly_operand = type { i32, i32, i32, i32, i32 }

@from_input = dso_local global %struct.assembly_operand zeroinitializer, align 4
@to_input = dso_local global %struct.assembly_operand zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @assemblez_1(i32 noundef %0, %struct.assembly_operand* nocapture noundef readonly byval(%struct.assembly_operand) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.assembly_operand, %struct.assembly_operand* %1, i64 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.assembly_operand, %struct.assembly_operand* @from_input, i64 0, i32 0), align 4
  %.not = icmp eq i32 %4, %5
  br i1 %.not, label %7, label %6

6:                                                ; preds = %2
  call void @abort() #3
  unreachable

7:                                                ; preds = %2
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @t0(%struct.assembly_operand* nocapture noundef readonly byval(%struct.assembly_operand) align 8 %0, %struct.assembly_operand* nocapture noundef readonly byval(%struct.assembly_operand) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.assembly_operand, %struct.assembly_operand* %0, i64 0, i32 1
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @assemblez_1(i32 noundef 32, %struct.assembly_operand* noundef nonnull byval(%struct.assembly_operand) align 8 %1)
  br label %8

7:                                                ; preds = %2
  call void @abort() #3
  unreachable

8:                                                ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %struct.assembly_operand, align 8
  %2 = alloca %struct.assembly_operand, align 8
  store i32 0, i32* getelementptr inbounds (%struct.assembly_operand, %struct.assembly_operand* @to_input, i64 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.assembly_operand, %struct.assembly_operand* @to_input, i64 0, i32 0), align 4
  store i32 2, i32* getelementptr inbounds (%struct.assembly_operand, %struct.assembly_operand* @to_input, i64 0, i32 2), align 4
  store i32 3, i32* getelementptr inbounds (%struct.assembly_operand, %struct.assembly_operand* @to_input, i64 0, i32 3), align 4
  store i32 4, i32* getelementptr inbounds (%struct.assembly_operand, %struct.assembly_operand* @to_input, i64 0, i32 4), align 4
  store i32 5, i32* getelementptr inbounds (%struct.assembly_operand, %struct.assembly_operand* @from_input, i64 0, i32 1), align 4
  store i32 6, i32* getelementptr inbounds (%struct.assembly_operand, %struct.assembly_operand* @from_input, i64 0, i32 0), align 4
  store i32 7, i32* getelementptr inbounds (%struct.assembly_operand, %struct.assembly_operand* @from_input, i64 0, i32 2), align 4
  store i32 8, i32* getelementptr inbounds (%struct.assembly_operand, %struct.assembly_operand* @from_input, i64 0, i32 3), align 4
  store i32 9, i32* getelementptr inbounds (%struct.assembly_operand, %struct.assembly_operand* @from_input, i64 0, i32 4), align 4
  %3 = bitcast %struct.assembly_operand* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(20) %3, i8* noundef nonnull align 4 dereferenceable(20) bitcast (%struct.assembly_operand* @to_input to i8*), i64 20, i1 false)
  %4 = bitcast %struct.assembly_operand* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(20) %4, i8* noundef nonnull align 4 dereferenceable(20) bitcast (%struct.assembly_operand* @from_input to i8*), i64 20, i1 false)
  call void @t0(%struct.assembly_operand* noundef nonnull byval(%struct.assembly_operand) align 8 %1, %struct.assembly_operand* noundef nonnull byval(%struct.assembly_operand) align 8 %2)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
