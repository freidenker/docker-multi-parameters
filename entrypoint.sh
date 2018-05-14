while [ "$1" != "" ]; do
    case $1 in
      -u|--CLIENT_ID)
        CLIENT_ID=$2
        shift 2
        ;;
      -p|--CLIENT_SECRET)
        CLIENT_SECRET=$2
        shift 2
        ;;
      -t|--TENANT_ID)
        TENANT_ID=$2
        shift 2
        ;;
      *|-*|-h|--help|/?|help) echo "Usage: ./entrypoint.sh -u <client_id> -p <client_secret> -t <tenantid> "
        echo "       -h|--help                     Show help." ; exit 1 ;;
    esac
done

az login --service-principal -u $CLIENT_ID -p $CLIENT_SECRET -t $TENANT_ID
