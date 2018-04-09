/**
 * Track the billings of number of parked Hours
 * @param {fr.uga.carparking.Billing} Billing - the number of hours
 * @transaction
 */


async function tradeCommodity(billing) {
    billing.parkingPoint.hourValue = billing.parkingPoint.hourValue - billing.parkingHours;
    let assetRegistry = await getAssetRegistry('fr.uga.carparking.ParkingPoint');
    await assetRegistry.update(billing.parkingPoint);
}

