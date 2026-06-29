{{/*
Generate the chart name
*/}}
{{- define "my-nginx-chart.name" -}}
{{- .Chart.Name -}}
{{- end }}

{{/*
Generate the full resource name
*/}}
{{- define "my-nginx-chart.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "my-nginx-chart.labels" -}}
app.kubernetes.io/name: {{ include "my-nginx-chart.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}