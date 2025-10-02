; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/wirecosts.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/wirecosts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@numnets = external dso_local global i32, align 4
@netarray = external dso_local global %struct.dimbox**, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @wirecosts(i32* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dimbox*, align 8
  %6 = alloca %struct.netbox*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load i32*, i32** %3, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32*, i32** %4, align 8
  store i32 0, i32* %15, align 4
  store i32 1, i32* %13, align 4
  br label %16

16:                                               ; preds = %183, %2
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* @numnets, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %186

20:                                               ; preds = %16
  %21 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %22 = load i32, i32* %13, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %21, i64 %23
  %25 = load %struct.dimbox*, %struct.dimbox** %24, align 8
  store %struct.dimbox* %25, %struct.dimbox** %5, align 8
  %26 = load %struct.dimbox*, %struct.dimbox** %5, align 8
  %27 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %26, i32 0, i32 0
  %28 = load %struct.netbox*, %struct.netbox** %27, align 8
  store %struct.netbox* %28, %struct.netbox** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %49, %20
  %30 = load %struct.netbox*, %struct.netbox** %6, align 8
  %31 = icmp eq %struct.netbox* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %53

33:                                               ; preds = %29
  %34 = load %struct.netbox*, %struct.netbox** %6, align 8
  %35 = getelementptr inbounds %struct.netbox, %struct.netbox* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %49

39:                                               ; preds = %33
  %40 = load %struct.netbox*, %struct.netbox** %6, align 8
  %41 = getelementptr inbounds %struct.netbox, %struct.netbox* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %10, align 4
  store i32 %42, i32* %9, align 4
  %43 = load %struct.netbox*, %struct.netbox** %6, align 8
  %44 = getelementptr inbounds %struct.netbox, %struct.netbox* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  store i32 %45, i32* %11, align 4
  %46 = load %struct.netbox*, %struct.netbox** %6, align 8
  %47 = getelementptr inbounds %struct.netbox, %struct.netbox* %46, i32 0, i32 0
  %48 = load %struct.netbox*, %struct.netbox** %47, align 8
  store %struct.netbox* %48, %struct.netbox** %6, align 8
  br label %53

49:                                               ; preds = %38
  %50 = load %struct.netbox*, %struct.netbox** %6, align 8
  %51 = getelementptr inbounds %struct.netbox, %struct.netbox* %50, i32 0, i32 0
  %52 = load %struct.netbox*, %struct.netbox** %51, align 8
  store %struct.netbox* %52, %struct.netbox** %6, align 8
  br label %29

53:                                               ; preds = %39, %32
  br label %54

54:                                               ; preds = %96, %53
  %55 = load %struct.netbox*, %struct.netbox** %6, align 8
  %56 = icmp ne %struct.netbox* %55, null
  br i1 %56, label %57, label %100

57:                                               ; preds = %54
  %58 = load %struct.netbox*, %struct.netbox** %6, align 8
  %59 = getelementptr inbounds %struct.netbox, %struct.netbox* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %96

63:                                               ; preds = %57
  %64 = load %struct.netbox*, %struct.netbox** %6, align 8
  %65 = getelementptr inbounds %struct.netbox, %struct.netbox* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %7, align 4
  %67 = load %struct.netbox*, %struct.netbox** %6, align 8
  %68 = getelementptr inbounds %struct.netbox, %struct.netbox* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %9, align 4
  br label %82

75:                                               ; preds = %63
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %79, %75
  br label %82

82:                                               ; preds = %81, %73
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %11, align 4
  br label %95

88:                                               ; preds = %82
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %92, %88
  br label %95

95:                                               ; preds = %94, %86
  br label %96

96:                                               ; preds = %95, %62
  %97 = load %struct.netbox*, %struct.netbox** %6, align 8
  %98 = getelementptr inbounds %struct.netbox, %struct.netbox* %97, i32 0, i32 0
  %99 = load %struct.netbox*, %struct.netbox** %98, align 8
  store %struct.netbox* %99, %struct.netbox** %6, align 8
  br label %54, !llvm.loop !4

100:                                              ; preds = %54
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %9, align 4
  %103 = sub nsw i32 %101, %102
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %11, align 4
  %106 = sub nsw i32 %104, %105
  %107 = add nsw i32 %103, %106
  %108 = load i32*, i32** %4, align 8
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, %107
  store i32 %110, i32* %108, align 4
  %111 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %111, i64 %113
  %115 = load %struct.dimbox*, %struct.dimbox** %114, align 8
  store %struct.dimbox* %115, %struct.dimbox** %5, align 8
  %116 = load %struct.dimbox*, %struct.dimbox** %5, align 8
  %117 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %116, i32 0, i32 0
  %118 = load %struct.netbox*, %struct.netbox** %117, align 8
  store %struct.netbox* %118, %struct.netbox** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %119 = load %struct.netbox*, %struct.netbox** %6, align 8
  %120 = icmp ne %struct.netbox* %119, null
  br i1 %120, label %121, label %131

121:                                              ; preds = %100
  %122 = load %struct.netbox*, %struct.netbox** %6, align 8
  %123 = getelementptr inbounds %struct.netbox, %struct.netbox* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  store i32 %124, i32* %10, align 4
  store i32 %124, i32* %9, align 4
  %125 = load %struct.netbox*, %struct.netbox** %6, align 8
  %126 = getelementptr inbounds %struct.netbox, %struct.netbox* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %12, align 4
  store i32 %127, i32* %11, align 4
  %128 = load %struct.netbox*, %struct.netbox** %6, align 8
  %129 = getelementptr inbounds %struct.netbox, %struct.netbox* %128, i32 0, i32 0
  %130 = load %struct.netbox*, %struct.netbox** %129, align 8
  store %struct.netbox* %130, %struct.netbox** %6, align 8
  br label %131

131:                                              ; preds = %121, %100
  br label %132

132:                                              ; preds = %168, %131
  %133 = load %struct.netbox*, %struct.netbox** %6, align 8
  %134 = icmp ne %struct.netbox* %133, null
  br i1 %134, label %135, label %172

135:                                              ; preds = %132
  %136 = load %struct.netbox*, %struct.netbox** %6, align 8
  %137 = getelementptr inbounds %struct.netbox, %struct.netbox* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %7, align 4
  %139 = load %struct.netbox*, %struct.netbox** %6, align 8
  %140 = getelementptr inbounds %struct.netbox, %struct.netbox* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %135
  %146 = load i32, i32* %7, align 4
  store i32 %146, i32* %9, align 4
  br label %154

147:                                              ; preds = %135
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i32, i32* %7, align 4
  store i32 %152, i32* %10, align 4
  br label %153

153:                                              ; preds = %151, %147
  br label %154

154:                                              ; preds = %153, %145
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %11, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %11, align 4
  br label %167

160:                                              ; preds = %154
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %12, align 4
  %163 = icmp sgt i32 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = load i32, i32* %8, align 4
  store i32 %165, i32* %12, align 4
  br label %166

166:                                              ; preds = %164, %160
  br label %167

167:                                              ; preds = %166, %158
  br label %168

168:                                              ; preds = %167
  %169 = load %struct.netbox*, %struct.netbox** %6, align 8
  %170 = getelementptr inbounds %struct.netbox, %struct.netbox* %169, i32 0, i32 0
  %171 = load %struct.netbox*, %struct.netbox** %170, align 8
  store %struct.netbox* %171, %struct.netbox** %6, align 8
  br label %132, !llvm.loop !6

172:                                              ; preds = %132
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* %9, align 4
  %175 = sub nsw i32 %173, %174
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* %11, align 4
  %178 = sub nsw i32 %176, %177
  %179 = add nsw i32 %175, %178
  %180 = load i32*, i32** %3, align 8
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, %179
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %172
  %184 = load i32, i32* %13, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %13, align 4
  br label %16, !llvm.loop !7

186:                                              ; preds = %16
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
