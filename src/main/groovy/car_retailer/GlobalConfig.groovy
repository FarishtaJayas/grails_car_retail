package car_retailer


class GlobalConfig {

    public static final def USER_TYPE = [
            ADMIN: "ADMIN",
            SALES_MANAGER: "SALES_MANAGER",
    ]

    public static Integer itemsPerPage() {
        return 5
    }

}
