sudo tee /opt/gs/corrige_workflow.sh <<'EOF'
#!/bin/bash
cd /opt/gs/esteira
sed -i 's|actions/upload-artifact@65c4c4a1ddee5b72f698fdd19549f0f0fb45bf47|actions/upload-artifact@v4|g' .github/workflows/gs-564771.yml
git add .
git commit -m "corrige versao do upload-artifact rm 564771"
git push origin main
EOF

