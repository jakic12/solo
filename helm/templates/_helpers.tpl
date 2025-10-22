{{- define "fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name -}}
{{- end -}}

{{- define "frontend.fullname" -}}
{{- printf "%s-frontend" (include "fullname" .) -}}
{{- end -}}

{{- define "ingress.fullname" -}}
{{- printf "%s-ingress" (include "fullname" .) -}}
{{- end -}}
