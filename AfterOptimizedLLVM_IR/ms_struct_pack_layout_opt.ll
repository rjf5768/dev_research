; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/ms_struct_pack_layout.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/ms_struct_pack_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.one = type { i32, i8, i16, i8 }
%struct.two = type { i32, i8, i32, i8 }
%struct.three = type { i16, i16, i8 }
%struct.four = type { i16, [2 x i8], i8, [3 x i8] }
%struct.five = type { i8, i8, i8 }
%struct.six = type { i8, [3 x i8], i8, i8, [2 x i8] }
%struct.seven = type { i8, i8, i8 }
%struct.eight = type { i16, i8 }
%union.nine = type { i64 }
%struct.ten = type { i64, i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [16 x i8], align 16
  %3 = alloca %struct.one, align 4
  %4 = alloca %struct.two, align 4
  %5 = alloca %struct.three, align 2
  %6 = alloca %struct.four, align 4
  %7 = alloca %struct.five, align 1
  %8 = alloca %struct.six, align 4
  %9 = alloca %struct.seven, align 1
  %10 = alloca %struct.eight, align 2
  %11 = alloca %union.nine, align 1
  %12 = alloca %struct.ten, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  %28 = alloca i8, align 1
  %29 = alloca i8, align 1
  %30 = alloca i8, align 1
  %31 = alloca i8, align 1
  %32 = alloca i8, align 1
  %33 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  store i64 12, i64* %13, align 8
  store i64 16, i64* %14, align 8
  store i64 6, i64* %15, align 8
  store i64 8, i64* %16, align 8
  store i64 3, i64* %17, align 8
  store i64 8, i64* %18, align 8
  store i64 3, i64* %19, align 8
  store i64 4, i64* %20, align 8
  store i64 8, i64* %21, align 8
  store i64 16, i64* %22, align 8
  store i8 8, i8* %23, align 1
  store i8 12, i8* %24, align 1
  store i8 4, i8* %25, align 1
  store i8 4, i8* %26, align 1
  store i8 2, i8* %27, align 1
  store i8 5, i8* %28, align 1
  store i8 2, i8* %29, align 1
  store i8 2, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 8, i8* %32, align 1
  store i8 0, i8* %33, align 1
  br label %34

34:                                               ; preds = %43, %0
  %35 = load i8, i8* %33, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp slt i32 %36, 16
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i8, i8* %33, align 1
  %40 = load i8, i8* %33, align 1
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 %41
  store i8 %39, i8* %42, align 1
  br label %43

43:                                               ; preds = %38
  %44 = load i8, i8* %33, align 1
  %45 = add i8 %44, 1
  store i8 %45, i8* %33, align 1
  br label %34, !llvm.loop !4

46:                                               ; preds = %34
  %47 = bitcast %struct.one* %3 to i8*
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 16 %48, i64 12, i1 false)
  %49 = getelementptr inbounds %struct.one, %struct.one* %3, i32 0, i32 3
  %50 = load i8, i8* %49, align 4
  %51 = sext i8 %50 to i32
  %52 = load i8, i8* %23, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  call void @abort() #3
  unreachable

56:                                               ; preds = %46
  %57 = bitcast %struct.two* %4 to i8*
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 16 %58, i64 16, i1 false)
  %59 = getelementptr inbounds %struct.two, %struct.two* %4, i32 0, i32 3
  %60 = load i8, i8* %59, align 4
  %61 = sext i8 %60 to i32
  %62 = load i8, i8* %24, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  call void @abort() #3
  unreachable

66:                                               ; preds = %56
  %67 = bitcast %struct.three* %5 to i8*
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %67, i8* align 16 %68, i64 6, i1 false)
  %69 = getelementptr inbounds %struct.three, %struct.three* %5, i32 0, i32 2
  %70 = load i8, i8* %69, align 2
  %71 = and i8 %70, 127
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* %25, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  call void @abort() #3
  unreachable

77:                                               ; preds = %66
  %78 = bitcast %struct.four* %6 to i8*
  %79 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %78, i8* align 16 %79, i64 8, i1 false)
  %80 = getelementptr inbounds %struct.four, %struct.four* %6, i32 0, i32 2
  %81 = load i8, i8* %80, align 4
  %82 = and i8 %81, 127
  %83 = zext i8 %82 to i32
  %84 = load i8, i8* %26, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp ne i32 %83, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  call void @abort() #3
  unreachable

88:                                               ; preds = %77
  %89 = bitcast %struct.five* %7 to i8*
  %90 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %89, i8* align 16 %90, i64 3, i1 false)
  %91 = getelementptr inbounds %struct.five, %struct.five* %7, i32 0, i32 2
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = load i8, i8* %27, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  call void @abort() #3
  unreachable

98:                                               ; preds = %88
  %99 = bitcast %struct.six* %8 to i8*
  %100 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 16 %100, i64 8, i1 false)
  %101 = getelementptr inbounds %struct.six, %struct.six* %8, i32 0, i32 3
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = load i8, i8* %28, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %103, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  call void @abort() #3
  unreachable

108:                                              ; preds = %98
  %109 = bitcast %struct.seven* %9 to i8*
  %110 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %109, i8* align 16 %110, i64 3, i1 false)
  %111 = getelementptr inbounds %struct.seven, %struct.seven* %9, i32 0, i32 2
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = load i8, i8* %29, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %113, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  call void @abort() #3
  unreachable

118:                                              ; preds = %108
  %119 = bitcast %struct.eight* %10 to i8*
  %120 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %119, i8* align 16 %120, i64 4, i1 false)
  %121 = getelementptr inbounds %struct.eight, %struct.eight* %10, i32 0, i32 1
  %122 = load i8, i8* %121, align 2
  %123 = sext i8 %122 to i32
  %124 = load i8, i8* %30, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %123, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  call void @abort() #3
  unreachable

128:                                              ; preds = %118
  %129 = bitcast %union.nine* %11 to i8*
  %130 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %129, i8* align 16 %130, i64 8, i1 false)
  %131 = bitcast %union.nine* %11 to i8*
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = load i8, i8* %31, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %133, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %128
  call void @abort() #3
  unreachable

138:                                              ; preds = %128
  %139 = bitcast %struct.ten* %12 to i8*
  %140 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %139, i8* align 16 %140, i64 16, i1 false)
  %141 = getelementptr inbounds %struct.ten, %struct.ten* %12, i32 0, i32 1
  %142 = load i8, i8* %141, align 8
  %143 = sext i8 %142 to i32
  %144 = load i8, i8* %32, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp ne i32 %143, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  call void @abort() #3
  unreachable

148:                                              ; preds = %138
  %149 = load i64, i64* %13, align 8
  %150 = icmp ne i64 12, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  call void @abort() #3
  unreachable

152:                                              ; preds = %148
  %153 = load i64, i64* %14, align 8
  %154 = icmp ne i64 16, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  call void @abort() #3
  unreachable

156:                                              ; preds = %152
  %157 = load i64, i64* %15, align 8
  %158 = icmp ne i64 6, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  call void @abort() #3
  unreachable

160:                                              ; preds = %156
  %161 = load i64, i64* %16, align 8
  %162 = icmp ne i64 8, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  call void @abort() #3
  unreachable

164:                                              ; preds = %160
  %165 = load i64, i64* %17, align 8
  %166 = icmp ne i64 3, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  call void @abort() #3
  unreachable

168:                                              ; preds = %164
  %169 = load i64, i64* %18, align 8
  %170 = icmp ne i64 8, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  call void @abort() #3
  unreachable

172:                                              ; preds = %168
  %173 = load i64, i64* %19, align 8
  %174 = icmp ne i64 3, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  call void @abort() #3
  unreachable

176:                                              ; preds = %172
  %177 = load i64, i64* %20, align 8
  %178 = icmp ne i64 4, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  call void @abort() #3
  unreachable

180:                                              ; preds = %176
  %181 = load i64, i64* %21, align 8
  %182 = icmp ne i64 8, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  call void @abort() #3
  unreachable

184:                                              ; preds = %180
  %185 = load i64, i64* %22, align 8
  %186 = icmp ne i64 16, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  call void @abort() #3
  unreachable

188:                                              ; preds = %184
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
