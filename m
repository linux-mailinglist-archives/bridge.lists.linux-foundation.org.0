Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A4A294A59
	for <lists.bridge@lfdr.de>; Wed, 21 Oct 2020 11:18:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1D1EB8160A;
	Wed, 21 Oct 2020 09:18:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OjMuEXrnUvns; Wed, 21 Oct 2020 09:18:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 17B628687E;
	Wed, 21 Oct 2020 09:17:48 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E363DC0052;
	Wed, 21 Oct 2020 09:17:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B75ACC0052
 for <bridge@lists.linux-foundation.org>; Wed, 21 Oct 2020 09:17:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9DECE8687E
 for <bridge@lists.linux-foundation.org>; Wed, 21 Oct 2020 09:17:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tYJ7vNsCwZ2v for <bridge@lists.linux-foundation.org>;
 Wed, 21 Oct 2020 09:17:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from nat-hk.nvidia.com (nat-hk.nvidia.com [203.18.50.4])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 320128669F
 for <bridge@lists.linux-foundation.org>; Wed, 21 Oct 2020 09:17:17 +0000 (UTC)
Received: from HKMAIL104.nvidia.com (Not Verified[10.18.92.100]) by
 nat-hk.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
 id <B5f8ffc9a0000>; Wed, 21 Oct 2020 17:17:14 +0800
Received: from HKMAIL102.nvidia.com (10.18.16.11) by HKMAIL104.nvidia.com
 (10.18.16.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 21 Oct
 2020 09:17:11 +0000
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.56) by
 HKMAIL102.nvidia.com (10.18.16.11) with Microsoft SMTP Server (TLS)
 id
 15.0.1473.3 via Frontend Transport; Wed, 21 Oct 2020 09:17:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c8XvH4TTOoZIgjeidmipmYrRRl5SDw4hphnvgBF/M8x1w77tCEqWQei+mnogpyfrGOpV1XjDmhivjBNos5mJEQgxaEV823Lbk01mOl3wIW49rJvWUg4vU4fOBcyUQ609tsQ7UFwcyFxZ1Ry8d20WHQQh2onICTqRC6fRWknwmaPkstvUZxbz8rdL72xyyluilx1m8nVtEs2PYkWUOqO1YVXANKxkk9ZoY29SnYvK9NdQjZyt0pBwGNBq4F4K/Eh5eeqT6uCSUo76phhFjX2KoZT/Aon1nzWPtIC2vUJCd+SkBfKr6I735pZB+tbM7JnpcEDjvv7YEoQg1H8ii28ylQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N+Qul32X0L3hXdb4hVkiR1UURZdwb27qdo/VucYU91s=;
 b=X+A/rrdHyWO5KVO6RztKPVPm0h0ZSXceWJ+WpVg51y1GWYQwroS10UEGBTBscCHWQgORStiCAgMBBlcuDerUlvB1n8lqOu+az4SH7m8GPeO3vhX5KflKnCr5xJOeLInBz8iKyRS9FlmeA3m6uTY591zYNdsfBCEI/4lGTHfeGvlYoVMniMixl9OR1fkYpMwd/ifwd1Qzvt9sVsGz4D3wKHOcddxO9Jnq4+P+Q5UVBoxbBX+D5ImMp4RBUm9qkagBsOutYQvILL1Bi8qca0+AyUA/I054cPcUhUuCP67KuoS6lblvO4JexjAjvcTYsdT5Z6PqAIdqfvAHSYBOCq/67A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BN6PR12MB1233.namprd12.prod.outlook.com (2603:10b6:404:1c::19)
 by BN8PR12MB3121.namprd12.prod.outlook.com (2603:10b6:408:40::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.21; Wed, 21 Oct
 2020 09:17:07 +0000
Received: from BN6PR12MB1233.namprd12.prod.outlook.com
 ([fe80::f54d:4b1b:ab07:3c7c]) by BN6PR12MB1233.namprd12.prod.outlook.com
 ([fe80::f54d:4b1b:ab07:3c7c%3]) with mapi id 15.20.3499.018; Wed, 21 Oct 2020
 09:17:07 +0000
From: Nikolay Aleksandrov <nikolay@nvidia.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Roopa Prabhu
 <roopa@nvidia.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "vladimir.oltean@nxp.com" <vladimir.oltean@nxp.com>, "kuba@kernel.org"
 <kuba@kernel.org>
Thread-Topic: [RFC PATCH] net: bridge: multicast: add support for L2 entries
Thread-Index: AQHWpLVezD+KQNrkJ0WU0qqZi5aFVKmhzHkA
Date: Wed, 21 Oct 2020 09:17:07 +0000
Message-ID: <98ac64d9b048278d2296f5b0ff3320c70ea13c72.camel@nvidia.com>
References: <20201017184139.2331792-1-vladimir.oltean@nxp.com>
In-Reply-To: <20201017184139.2331792-1-vladimir.oltean@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.34.4 (3.34.4-1.fc31) 
authentication-results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=nvidia.com; 
x-originating-ip: [84.238.136.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e5d0d989-21a4-46ea-af93-08d875a21524
x-ms-traffictypediagnostic: BN8PR12MB3121:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN8PR12MB31213C10A0851BBC211E3809DF1C0@BN8PR12MB3121.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 71ck5eKVcMNLH2nTW79v8J48LwDbdZ2WCG4SaUtRedQhUiU88Md3NDQuNn0QKYnck/+YR8Ab+ot4IhG0gK7wh5XlRwud67R3TeLswZVEG6XdrkqeYG6k2XCGn+uPDDhMq6A2QuzsIPzzgWkhq1Zh6Ys5foGsEdHkQziD9kPDw7M5XPpSmcLPXo99ISD6POyiDYeISHFeOhmkz7CyKFTf1+fNsTQwZFwEaZaA1csSXVhbAg6bL/OKOZOxc0NZynWGiFqZh02lVfcoKeQ0B2JpAq1GB0sm7v4qOCnp0q9e8mklug1/z5kxwPCrO6OyapuiIonYJtrYQY9yl9yI21yDmXEKVGRoAmYzCl9D/STHTNUQyML6zjXN5sM3mTEYD+dwv88MJ4qn4CTePImmH1YASg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR12MB1233.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(136003)(39860400002)(346002)(366004)(396003)(66446008)(478600001)(83380400001)(54906003)(8936002)(66574015)(8676002)(2616005)(110136005)(2906002)(186003)(966005)(4001150100001)(26005)(86362001)(316002)(5660300002)(71200400001)(66556008)(91956017)(76116006)(66946007)(6512007)(6506007)(64756008)(6486002)(7416002)(3450700001)(4326008)(36756003)(30864003)(66476007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: KB1nyeMec0MW6A9m6ZLLknSnoFhjG0GcuoWmsJSCQ7Ms+ObWuH+et2El88dOJkiTsN6VlZjQPLp2OioQqZ4h6+AvBObKrSBxiLgkctRKTfciZus8FTANOmjuuu5AQKOfyhCWJXmV5v0O7IDefKMcEwf1TBHvpwx9ihwZJ8di0333X6lJyYNTz9CXd4C6kk9D1qecaa+gtnWCXTSRy5MgW3/JHWEoFKFVfaPApYioeM/m+FGfoG39D0tgLUe08tDLKkqfasIldyRaUSIesMPlmFEdEOJtBdHgvEDBJ1OXHZI2PEBa3eBsRinEoC3NlZl7eVmN4APGyhVCpy8PBSc7r5pLUcQ1s3UVkmh2DJ4Ij50bPwKXtqS1jK0JinzY4uMQmPgfL5eXXFudqteUzCRXwl/vDkoCnRio9QeSG0dRR3Wc8peR+bxo04m15sCnBoXbrdGmcR1E39bvlKWoVWiX5Q0/Xb3us+xEa4BUY5ulCxLrje/5yZ+9KfSVbw5Po8Nwein1pfXhJ5/A2ZCQEzw+WQ37eghZWj3rv8CZxGh1OGIVqq/XvimXqUvjT78KA+8Tt+Uq7thk7CanWbcK6g5anrRavZ10FM1xfr1FrD1S2JSf7CixesPjQEFFidfwMo+k45nFgMczsfRFH53bbEQ17g==
Content-Type: text/plain; charset="utf-8"
Content-ID: <79643117E85ACF4582D17BB97063ABE6@namprd12.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR12MB1233.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5d0d989-21a4-46ea-af93-08d875a21524
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2020 09:17:07.1093 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fDFa0dd17mLInpBg2D+MYDzdyfCYqjwIbcaD48ODgtwNIwsEuNO/HDAw2tO38pXaKvnu/Po1NdMzkWbwURhizg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3121
X-OriginatorOrg: Nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1603271834; bh=N+Qul32X0L3hXdb4hVkiR1UURZdwb27qdo/VucYU91s=;
 h=ARC-Seal:ARC-Message-Signature:ARC-Authentication-Results:From:To:
 CC:Subject:Thread-Topic:Thread-Index:Date:Message-ID:References:
 In-Reply-To:Reply-To:Accept-Language:Content-Language:
 X-MS-Has-Attach:X-MS-TNEF-Correlator:user-agent:
 authentication-results:x-originating-ip:x-ms-publictraffictype:
 x-ms-office365-filtering-correlation-id:x-ms-traffictypediagnostic:
 x-ms-exchange-transport-forked:x-microsoft-antispam-prvs:
 x-ms-oob-tlc-oobclassifiers:x-ms-exchange-senderadcheck:
 x-microsoft-antispam:x-microsoft-antispam-message-info:
 x-forefront-antispam-report:x-ms-exchange-antispam-messagedata:
 Content-Type:Content-ID:Content-Transfer-Encoding:MIME-Version:
 X-MS-Exchange-CrossTenant-AuthAs:
 X-MS-Exchange-CrossTenant-AuthSource:
 X-MS-Exchange-CrossTenant-Network-Message-Id:
 X-MS-Exchange-CrossTenant-originalarrivaltime:
 X-MS-Exchange-CrossTenant-fromentityheader:
 X-MS-Exchange-CrossTenant-id:X-MS-Exchange-CrossTenant-mailboxtype:
 X-MS-Exchange-CrossTenant-userprincipalname:
 X-MS-Exchange-Transport-CrossTenantHeadersStamped:X-OriginatorOrg;
 b=iHAqo2OS2Gl+VOnf7k4Kk3MxGdEC8SU6HbIgAUTNEQVR0ZlBgJzSLTaO2R/Cpa3hT
 OgfwWQ4crFfxe7IARLmPRnY/cFxR5PwoKRObQUee7kBFpoIk3MvFFbSy8ASohZ24ut
 XIgzydVNaB8DCTD48CcOPiijYo0RxaNXggDxmFUEXYLmKfflXiNfKz1hCvJX76cZIz
 DjuPujFBBUSLV2UROUghFBgDxcqt+KpltAo3YwoRJHuoIvGhRSM4qO2JpH+a3HK2kS
 fD7O56vmj/p6i+mUo0BA5wYlkgLPkku5eX0mBSjA93/D0pUXflAgWS9oyrXP/d9OmW
 LQuxuI14qLHOQ==
Cc: "idosch@idosch.org" <idosch@idosch.org>,
 "jiri@mellanox.com" <jiri@mellanox.com>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "vivien.didelot@gmail.com" <vivien.didelot@gmail.com>,
 "andrew@lunn.ch" <andrew@lunn.ch>
Subject: Re: [Bridge] [RFC PATCH] net: bridge: multicast: add support for L2
	entries
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Reply-To: Nikolay Aleksandrov <nikolay@nvidia.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

T24gU2F0LCAyMDIwLTEwLTE3IGF0IDIxOjQxICswMzAwLCBWbGFkaW1pciBPbHRlYW4gd3JvdGU6
DQo+IEZyb206IE5pa29sYXkgQWxla3NhbmRyb3YgPG5pa29sYXlAbnZpZGlhLmNvbT4NCj4gDQo+
IEV4dGVuZCB0aGUgYnJpZGdlIG11bHRpY2FzdCBjb250cm9sIGFuZCBkYXRhIHBhdGggdG8gY29u
ZmlndXJlIHJvdXRlcw0KPiBmb3IgTDIgKG5vbi1JUCkgbXVsdGljYXN0IGdyb3Vwcy4NCj4gDQo+
IFRoZSB1YXBpIHN0cnVjdCBicl9tZGJfZW50cnkgdW5pb24gdSBpcyBleHRlbmRlZCB3aXRoIGFu
b3RoZXIgdmFyaWFudCwNCj4gaW50ZXJwcmV0YXRpb24sIG1hY19hZGRyLCB3aGljaCBkb2VzIG5v
dCBjaGFuZ2UgdGhlIHN0cnVjdHVyZSBzaXplLCBhbmQNCj4gd2hpY2ggaXMgdmFsaWQgd2hlbiB0
aGUgTURCX0ZMQUdTX0wyIGZsYWcgaXMgZm91bmQgc2V0Lg0KPiANCj4gVG8gYmUgY29tcGF0aWJs
ZSB3aXRoIHRoZSBmb3J3YXJkaW5nIGNvZGUgdGhhdCBpcyBhbHJlYWR5IGluIHBsYWNlLA0KPiB3
aGljaCBhY3RzIGFzIGFuIElHTVAvTUxEIHNub29waW5nIGJyaWRnZSB3aXRoIHF1ZXJpZXIgY2Fw
YWJpbGl0aWVzLCB3ZQ0KPiBuZWVkIHRvIGRlY2xhcmUgdGhhdCBmb3IgTDIgTURCIGVudHJpZXMg
KGZvciB3aGljaCB0aGVyZSBleGlzdHMgbm8gc3VjaA0KPiB0aGluZyBhcyBJR01QL01MRCBzbm9v
cGluZy9xdWVyeWluZyksIHRoYXQgdGhlcmUgaXMgYWx3YXlzIGEgcXVlcmllci4NCj4gT3RoZXJ3
aXNlLCB0aGVzZSBlbnRyaWVzIHdvdWxkIGJlIGZsb29kZWQgdG8gYWxsIGJyaWRnZSBwb3J0cyBh
bmQgbm90DQo+IGp1c3QgdG8gdGhvc2UgdGhhdCBhcmUgbWVtYmVycyBvZiB0aGUgTDIgbXVsdGlj
YXN0IGdyb3VwLg0KPiANCj4gTmVlZGxlc3MgdG8gc2F5LCBvbmx5IHBlcm1hbmVudCBMMiBtdWx0
aWNhc3QgZ3JvdXBzIGNhbiBiZSBpbnN0YWxsZWQgb24NCj4gYSBicmlkZ2UgcG9ydC4NCj4gDQo+
IFNpZ25lZC1vZmYtYnk6IE5pa29sYXkgQWxla3NhbmRyb3YgPG5pa29sYXlAbnZpZGlhLmNvbT4N
Cj4gU2lnbmVkLW9mZi1ieTogVmxhZGltaXIgT2x0ZWFuIDx2bGFkaW1pci5vbHRlYW5AbnhwLmNv
bT4NCj4gLS0tDQo+IFRoaXMgcGF0Y2ggaXMgYWRhcHRlZCBmcm9tIHRoZSB2ZXJzaW9uIHRoYXQg
Tmlrb2xheSBwb3N0ZWQgaGVyZToNCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzIw
MjAwNzA4MDkwNDU0Lnp2YjZvN2pyMndvaXJ3M2lAc2tidWYvDQo+IA0KPiBUaGVyZSwgaGUgbWFy
a2VkIHRoZSBwYXRjaCBhcyAidW5maW5pc2hlZCIuIEkgaGF2ZW4ndCBtYWRlIGFueSBtYWpvcg0K
PiBtb2RpZmljYXRpb25zIHRvIGl0LCBidXQgSSd2ZSB0ZXN0ZWQgaXQgYW5kIGl0IGFwcGVhcnMg
dG8gd29yayBvaywNCj4gaW5jbHVkaW5nIHdpdGggb2ZmbG9hZGluZy4gSGVuY2UsIEkgd291bGQg
YXBwcmVjaWF0ZSBzb21lIHRpcHMgcmVnYXJkaW5nDQo+IHRoaW5ncyB0aGF0IG1pZ2h0IGJlIG1p
c3NpbmcuDQo+IA0KDQpIaSwNCkkgYWxtb3N0IG1pc3NlZCB0aGlzIG9uZSwgdGhhbmsgeW91IGZv
ciBmaXhpbmcgaXQgdXAuIEkgd2FzIHdvbmRlcmluZyBpZiB3ZQ0KY2FuIG1vdmUgYnJfaXAncyBt
YWNfYWRkciBpbiB0aGUgImRzdCIgdW5pb24gdG8gc2F2ZSBzb21lIHNwYWNlIGFuZCByZWR1Y2UN
Cm9wcyB3aGVuIG1hdGNoaW5nLCBzaW5jZSB3ZSdyZSBhbHNvIG1hdGNoaW5nIG9uIHRoZSBwcm90
b2NvbCBmaWVsZC4gSW4gZ2VuZXJhbA0KZG8gd2UgbmVlZCB0aGUgLT5sMiBmaWVsZCBhdCBhbGws
IGNhbiB3ZSB1c2UgcHJvdG8gPT0gMCA/IEluIG9yZGVyIHRvIG1ha2UgaXQNCm1vcmUgcmVhZGFi
bGUgaXQgY2FuIGJlIGluIGEgaGVscGVyIHdpdGggYSBkZXNjcmlwdGl2ZSBuYW1lIHNvIHdlIGRv
bid0IHdvbmRlcg0Kd2hhdCBwcm90byA9PSAwIG1lYW50IGxhdGVyLiBBIGZldyBtb3JlIG1pbm9y
IGNvbW1lbnRzIGJlbG93Lg0KDQo+ICBpbmNsdWRlL2xpbnV4L2lmX2JyaWRnZS5oICAgICAgfCAg
MSArDQo+ICBpbmNsdWRlL3VhcGkvbGludXgvaWZfYnJpZGdlLmggfCAgMiArKw0KPiAgbmV0L2Jy
aWRnZS9icl9kZXZpY2UuYyAgICAgICAgIHwgIDIgKy0NCj4gIG5ldC9icmlkZ2UvYnJfaW5wdXQu
YyAgICAgICAgICB8ICAyICstDQo+ICBuZXQvYnJpZGdlL2JyX21kYi5jICAgICAgICAgICAgfCAy
NCArKysrKysrKysrKysrKysrKysrKy0tLS0NCj4gIG5ldC9icmlkZ2UvYnJfbXVsdGljYXN0LmMg
ICAgICB8IDEyICsrKysrKysrKystLQ0KPiAgbmV0L2JyaWRnZS9icl9wcml2YXRlLmggICAgICAg
IHwgIDcgKysrKystLQ0KPiAgNyBmaWxlcyBjaGFuZ2VkLCA0MCBpbnNlcnRpb25zKCspLCAxMCBk
ZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2lmX2JyaWRnZS5o
IGIvaW5jbHVkZS9saW51eC9pZl9icmlkZ2UuaA0KPiBpbmRleCA1NTZjYWVkMDAyNTguLmIxMzVh
ZDcxNDM4MyAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9saW51eC9pZl9icmlkZ2UuaA0KPiArKysg
Yi9pbmNsdWRlL2xpbnV4L2lmX2JyaWRnZS5oDQo+IEBAIC0yNiw2ICsyNiw3IEBAIHN0cnVjdCBi
cl9pcCB7DQo+ICAJCXN0cnVjdCBpbjZfYWRkciBpcDY7DQo+ICAjZW5kaWYNCj4gIAl9IGRzdDsN
Cj4gKwl1bnNpZ25lZCBjaGFyCW1hY19hZGRyW0VUSF9BTEVOXTsNCj4gIAlfX2JlMTYJCXByb3Rv
Ow0KPiAgCV9fdTE2ICAgICAgICAgICB2aWQ7DQo+ICB9Ow0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVk
ZS91YXBpL2xpbnV4L2lmX2JyaWRnZS5oIGIvaW5jbHVkZS91YXBpL2xpbnV4L2lmX2JyaWRnZS5o
DQo+IGluZGV4IDRjNjg3Njg2YWE4Zi4uYTI1ZjZmOWFhOGMzIDEwMDY0NA0KPiAtLS0gYS9pbmNs
dWRlL3VhcGkvbGludXgvaWZfYnJpZGdlLmgNCj4gKysrIGIvaW5jbHVkZS91YXBpL2xpbnV4L2lm
X2JyaWRnZS5oDQo+IEBAIC01MjAsMTIgKzUyMCwxNCBAQCBzdHJ1Y3QgYnJfbWRiX2VudHJ5IHsN
Cj4gICNkZWZpbmUgTURCX0ZMQUdTX0ZBU1RfTEVBVkUJKDEgPDwgMSkNCj4gICNkZWZpbmUgTURC
X0ZMQUdTX1NUQVJfRVhDTAkoMSA8PCAyKQ0KPiAgI2RlZmluZSBNREJfRkxBR1NfQkxPQ0tFRAko
MSA8PCAzKQ0KPiArI2RlZmluZSBNREJfRkxBR1NfTDIJCSgxIDw8IDUpDQoNCkkgdGhpbmsgdGhp
cyBzaG91bGQgYmUgNC4NCg0KPiAgCV9fdTggZmxhZ3M7DQo+ICAJX191MTYgdmlkOw0KPiAgCXN0
cnVjdCB7DQo+ICAJCXVuaW9uIHsNCj4gIAkJCV9fYmUzMglpcDQ7DQo+ICAJCQlzdHJ1Y3QgaW42
X2FkZHIgaXA2Ow0KPiArCQkJdW5zaWduZWQgY2hhciBtYWNfYWRkcltFVEhfQUxFTl07DQo+ICAJ
CX0gdTsNCj4gIAkJX19iZTE2CQlwcm90bzsNCj4gIAl9IGFkZHI7DQo+IGRpZmYgLS1naXQgYS9u
ZXQvYnJpZGdlL2JyX2RldmljZS5jIGIvbmV0L2JyaWRnZS9icl9kZXZpY2UuYw0KPiBpbmRleCA2
Zjc0MmZlZTg3NGEuLjA2YzI4NzUzYjkxMSAxMDA2NDQNCj4gLS0tIGEvbmV0L2JyaWRnZS9icl9k
ZXZpY2UuYw0KPiArKysgYi9uZXQvYnJpZGdlL2JyX2RldmljZS5jDQo+IEBAIC05Myw3ICs5Myw3
IEBAIG5ldGRldl90eF90IGJyX2Rldl94bWl0KHN0cnVjdCBza19idWZmICpza2IsIHN0cnVjdCBu
ZXRfZGV2aWNlICpkZXYpDQo+ICANCj4gIAkJbWRzdCA9IGJyX21kYl9nZXQoYnIsIHNrYiwgdmlk
KTsNCj4gIAkJaWYgKChtZHN0IHx8IEJSX0lOUFVUX1NLQl9DQl9NUk9VVEVSU19PTkxZKHNrYikp
ICYmDQo+IC0JCSAgICBicl9tdWx0aWNhc3RfcXVlcmllcl9leGlzdHMoYnIsIGV0aF9oZHIoc2ti
KSkpDQo+ICsJCSAgICBicl9tdWx0aWNhc3RfcXVlcmllcl9leGlzdHMoYnIsIGV0aF9oZHIoc2ti
KSwgbWRzdCkpDQo+ICAJCQlicl9tdWx0aWNhc3RfZmxvb2QobWRzdCwgc2tiLCBmYWxzZSwgdHJ1
ZSk7DQo+ICAJCWVsc2UNCj4gIAkJCWJyX2Zsb29kKGJyLCBza2IsIEJSX1BLVF9NVUxUSUNBU1Qs
IGZhbHNlLCB0cnVlKTsNCj4gZGlmZiAtLWdpdCBhL25ldC9icmlkZ2UvYnJfaW5wdXQuYyBiL25l
dC9icmlkZ2UvYnJfaW5wdXQuYw0KPiBpbmRleCA1OWEzMThiOWY2NDYuLmQzMWI1YzE4YzZhMSAx
MDA2NDQNCj4gLS0tIGEvbmV0L2JyaWRnZS9icl9pbnB1dC5jDQo+ICsrKyBiL25ldC9icmlkZ2Uv
YnJfaW5wdXQuYw0KPiBAQCAtMTM0LDcgKzEzNCw3IEBAIGludCBicl9oYW5kbGVfZnJhbWVfZmlu
aXNoKHN0cnVjdCBuZXQgKm5ldCwgc3RydWN0IHNvY2sgKnNrLCBzdHJ1Y3Qgc2tfYnVmZiAqc2ti
DQo+ICAJY2FzZSBCUl9QS1RfTVVMVElDQVNUOg0KPiAgCQltZHN0ID0gYnJfbWRiX2dldChiciwg
c2tiLCB2aWQpOw0KPiAgCQlpZiAoKG1kc3QgfHwgQlJfSU5QVVRfU0tCX0NCX01ST1VURVJTX09O
TFkoc2tiKSkgJiYNCj4gLQkJICAgIGJyX211bHRpY2FzdF9xdWVyaWVyX2V4aXN0cyhiciwgZXRo
X2hkcihza2IpKSkgew0KPiArCQkgICAgYnJfbXVsdGljYXN0X3F1ZXJpZXJfZXhpc3RzKGJyLCBl
dGhfaGRyKHNrYiksIG1kc3QpKSB7DQo+ICAJCQlpZiAoKG1kc3QgJiYgbWRzdC0+aG9zdF9qb2lu
ZWQpIHx8DQo+ICAJCQkgICAgYnJfbXVsdGljYXN0X2lzX3JvdXRlcihicikpIHsNCj4gIAkJCQls
b2NhbF9yY3YgPSB0cnVlOw0KPiBkaWZmIC0tZ2l0IGEvbmV0L2JyaWRnZS9icl9tZGIuYyBiL25l
dC9icmlkZ2UvYnJfbWRiLmMNCj4gaW5kZXggZTE1YmFiMTlhMDEyLi40ZGVjZjNlYjcwMDEgMTAw
NjQ0DQo+IC0tLSBhL25ldC9icmlkZ2UvYnJfbWRiLmMNCj4gKysrIGIvbmV0L2JyaWRnZS9icl9t
ZGIuYw0KPiBAQCAtNjYsNiArNjYsOCBAQCBzdGF0aWMgdm9pZCBfX21kYl9lbnRyeV9maWxsX2Zs
YWdzKHN0cnVjdCBicl9tZGJfZW50cnkgKmUsIHVuc2lnbmVkIGNoYXIgZmxhZ3MpDQo+ICAJCWUt
PmZsYWdzIHw9IE1EQl9GTEFHU19TVEFSX0VYQ0w7DQo+ICAJaWYgKGZsYWdzICYgTURCX1BHX0ZM
QUdTX0JMT0NLRUQpDQo+ICAJCWUtPmZsYWdzIHw9IE1EQl9GTEFHU19CTE9DS0VEOw0KPiArCWlm
IChmbGFncyAmIE1EQl9QR19GTEFHU19MMikNCj4gKwkJZS0+ZmxhZ3MgfD0gTURCX0ZMQUdTX0wy
Ow0KPiAgfQ0KPiAgDQo+ICBzdGF0aWMgdm9pZCBfX21kYl9lbnRyeV90b19icl9pcChzdHJ1Y3Qg
YnJfbWRiX2VudHJ5ICplbnRyeSwgc3RydWN0IGJyX2lwICppcCwNCj4gQEAgLTg3LDYgKzg5LDgg
QEAgc3RhdGljIHZvaWQgX19tZGJfZW50cnlfdG9fYnJfaXAoc3RydWN0IGJyX21kYl9lbnRyeSAq
ZW50cnksIHN0cnVjdCBicl9pcCAqaXAsDQo+ICAJCQlpcC0+c3JjLmlwNiA9IG5sYV9nZXRfaW42
X2FkZHIobWRiX2F0dHJzW01EQkVfQVRUUl9TT1VSQ0VdKTsNCj4gIAkJYnJlYWs7DQo+ICAjZW5k
aWYNCj4gKwlkZWZhdWx0Og0KPiArCQlldGhlcl9hZGRyX2NvcHkoaXAtPm1hY19hZGRyLCBlbnRy
eS0+YWRkci51Lm1hY19hZGRyKTsNCj4gIAl9DQo+ICANCj4gIH0NCj4gQEAgLTE3NCw5ICsxNzgs
MTEgQEAgc3RhdGljIGludCBfX21kYl9maWxsX2luZm8oc3RydWN0IHNrX2J1ZmYgKnNrYiwNCj4g
IAlpZiAobXAtPmFkZHIucHJvdG8gPT0gaHRvbnMoRVRIX1BfSVApKQ0KPiAgCQllLmFkZHIudS5p
cDQgPSBtcC0+YWRkci5kc3QuaXA0Ow0KPiAgI2lmIElTX0VOQUJMRUQoQ09ORklHX0lQVjYpDQo+
IC0JaWYgKG1wLT5hZGRyLnByb3RvID09IGh0b25zKEVUSF9QX0lQVjYpKQ0KPiArCWVsc2UgaWYg
KG1wLT5hZGRyLnByb3RvID09IGh0b25zKEVUSF9QX0lQVjYpKQ0KPiAgCQllLmFkZHIudS5pcDYg
PSBtcC0+YWRkci5kc3QuaXA2Ow0KPiAgI2VuZGlmDQo+ICsJZWxzZQ0KPiArCQlldGhlcl9hZGRy
X2NvcHkoZS5hZGRyLnUubWFjX2FkZHIsIG1wLT5hZGRyLm1hY19hZGRyKTsNCj4gIAllLmFkZHIu
cHJvdG8gPSBtcC0+YWRkci5wcm90bzsNCj4gIAluZXN0X2VudCA9IG5sYV9uZXN0X3N0YXJ0X25v
ZmxhZyhza2IsDQo+ICAJCQkJCSBNREJBX01EQl9FTlRSWV9JTkZPKTsNCj4gQEAgLTIxMCw2ICsy
MTYsOCBAQCBzdGF0aWMgaW50IF9fbWRiX2ZpbGxfaW5mbyhzdHJ1Y3Qgc2tfYnVmZiAqc2tiLA0K
PiAgCQl9DQo+ICAJCWJyZWFrOw0KPiAgI2VuZGlmDQo+ICsJZGVmYXVsdDoNCj4gKwkJZXRoZXJf
YWRkcl9jb3B5KGUuYWRkci51Lm1hY19hZGRyLCBtcC0+YWRkci5tYWNfYWRkcik7DQo+ICAJfQ0K
PiAgCWlmIChwKSB7DQo+ICAJCWlmIChubGFfcHV0X3U4KHNrYiwgTURCQV9NREJfRUFUVFJfUlRQ
Uk9ULCBwLT5ydF9wcm90b2NvbCkpDQo+IEBAIC01NjIsOSArNTcwLDEyIEBAIHZvaWQgYnJfbWRi
X25vdGlmeShzdHJ1Y3QgbmV0X2RldmljZSAqZGV2LA0KPiAgCQlpZiAobXAtPmFkZHIucHJvdG8g
PT0gaHRvbnMoRVRIX1BfSVApKQ0KPiAgCQkJaXBfZXRoX21jX21hcChtcC0+YWRkci5kc3QuaXA0
LCBtZGIuYWRkcik7DQo+ICAjaWYgSVNfRU5BQkxFRChDT05GSUdfSVBWNikNCj4gLQkJZWxzZQ0K
PiArCQllbHNlIGlmIChtcC0+YWRkci5wcm90byA9PSBodG9ucyhFVEhfUF9JUFY2KSkNCj4gIAkJ
CWlwdjZfZXRoX21jX21hcCgmbXAtPmFkZHIuZHN0LmlwNiwgbWRiLmFkZHIpOw0KPiAgI2VuZGlm
DQo+ICsJCWVsc2UNCj4gKwkJCWV0aGVyX2FkZHJfY29weShtZGIuYWRkciwgbXAtPmFkZHIubWFj
X2FkZHIpOw0KPiArDQo+ICAJCW1kYi5vYmoub3JpZ19kZXYgPSBwZy0+a2V5LnBvcnQtPmRldjsN
Cj4gIAkJc3dpdGNoICh0eXBlKSB7DQo+ICAJCWNhc2UgUlRNX05FV01EQjoNCj4gQEAgLTY5Myw3
ICs3MDQsNyBAQCBzdGF0aWMgYm9vbCBpc192YWxpZF9tZGJfZW50cnkoc3RydWN0IGJyX21kYl9l
bnRyeSAqZW50cnksDQo+ICAJCQlyZXR1cm4gZmFsc2U7DQo+ICAJCX0NCj4gICNlbmRpZg0KPiAt
CX0gZWxzZSB7DQo+ICsJfSBlbHNlIGlmIChlbnRyeS0+YWRkci5wcm90byAhPSAwKSB7DQo+ICAJ
CU5MX1NFVF9FUlJfTVNHX01PRChleHRhY2ssICJVbmtub3duIGVudHJ5IHByb3RvY29sIik7DQo+
ICAJCXJldHVybiBmYWxzZTsNCj4gIAl9DQo+IEBAIC04NTcsNiArODY4LDExIEBAIHN0YXRpYyBp
bnQgYnJfbWRiX2FkZF9ncm91cChzdHJ1Y3QgbmV0X2JyaWRnZSAqYnIsIHN0cnVjdCBuZXRfYnJp
ZGdlX3BvcnQgKnBvcnQsDQo+ICAJCQlyZXR1cm4gZXJyOw0KPiAgCX0NCj4gIA0KPiArCWlmIChl
bnRyeS0+c3RhdGUgIT0gTURCX1BFUk1BTkVOVCAmJiBtcC0+bDIpIHsNCj4gKwkJTkxfU0VUX0VS
Ul9NU0dfTU9EKGV4dGFjaywgIk9ubHkgcGVybWFuZW50IEwyIGVudHJpZXMgYWxsb3dlZCIpOw0K
PiArCQlyZXR1cm4gLUVJTlZBTDsNCj4gKwl9DQo+ICsNCj4gIAkvKiBob3N0IGpvaW4gKi8NCj4g
IAlpZiAoIXBvcnQpIHsNCj4gIAkJaWYgKG1wLT5ob3N0X2pvaW5lZCkgew0KPiBAQCAtODkxLDcg
KzkwNyw3IEBAIHN0YXRpYyBpbnQgYnJfbWRiX2FkZF9ncm91cChzdHJ1Y3QgbmV0X2JyaWRnZSAq
YnIsIHN0cnVjdCBuZXRfYnJpZGdlX3BvcnQgKnBvcnQsDQo+ICAJCXJldHVybiAtRU5PTUVNOw0K
PiAgCX0NCj4gIAlyY3VfYXNzaWduX3BvaW50ZXIoKnBwLCBwKTsNCj4gLQlpZiAoZW50cnktPnN0
YXRlID09IE1EQl9URU1QT1JBUlkpDQo+ICsJaWYgKGVudHJ5LT5zdGF0ZSA9PSBNREJfVEVNUE9S
QVJZICYmICFtcC0+bDIpDQo+ICAJCW1vZF90aW1lcigmcC0+dGltZXIsIG5vdyArIGJyLT5tdWx0
aWNhc3RfbWVtYmVyc2hpcF9pbnRlcnZhbCk7DQo+ICAJYnJfbWRiX25vdGlmeShici0+ZGV2LCBt
cCwgcCwgUlRNX05FV01EQik7DQo+ICAJLyogaWYgd2UgYXJlIGFkZGluZyBhIG5ldyBFWENMVURF
IHBvcnQgZ3JvdXAgKCosRykgaXQgbmVlZHMgdG8gYmUgYWxzbw0KPiBkaWZmIC0tZ2l0IGEvbmV0
L2JyaWRnZS9icl9tdWx0aWNhc3QuYyBiL25ldC9icmlkZ2UvYnJfbXVsdGljYXN0LmMNCj4gaW5k
ZXggZWFlODk4YzNjZmY3Li5iYzAzMDU3ZTdjYWYgMTAwNjQ0DQo+IC0tLSBhL25ldC9icmlkZ2Uv
YnJfbXVsdGljYXN0LmMNCj4gKysrIGIvbmV0L2JyaWRnZS9icl9tdWx0aWNhc3QuYw0KPiBAQCAt
MTc5LDcgKzE3OSw4IEBAIHN0cnVjdCBuZXRfYnJpZGdlX21kYl9lbnRyeSAqYnJfbWRiX2dldChz
dHJ1Y3QgbmV0X2JyaWRnZSAqYnIsDQo+ICAJCWJyZWFrOw0KPiAgI2VuZGlmDQo+ICAJZGVmYXVs
dDoNCj4gLQkJcmV0dXJuIE5VTEw7DQo+ICsJCWlwLnByb3RvID0gMDsNCj4gKwkJZXRoZXJfYWRk
cl9jb3B5KGlwLm1hY19hZGRyLCBldGhfaGRyKHNrYiktPmhfZGVzdCk7DQo+ICAJfQ0KPiAgDQo+
ICAJcmV0dXJuIGJyX21kYl9pcF9nZXRfcmN1KGJyLCAmaXApOw0KPiBAQCAtMTA1MCw2ICsxMDUx
LDcgQEAgc3RydWN0IG5ldF9icmlkZ2VfbWRiX2VudHJ5ICpicl9tdWx0aWNhc3RfbmV3X2dyb3Vw
KHN0cnVjdCBuZXRfYnJpZGdlICpiciwNCj4gIA0KPiAgCW1wLT5iciA9IGJyOw0KPiAgCW1wLT5h
ZGRyID0gKmdyb3VwOw0KPiArCW1wLT5sMiA9ICEhKGdyb3VwLT5wcm90byA9PSAwKTsNCj4gIAlt
cC0+bWNhc3RfZ2MuZGVzdHJveSA9IGJyX211bHRpY2FzdF9kZXN0cm95X21kYl9lbnRyeTsNCj4g
IAl0aW1lcl9zZXR1cCgmbXAtPnRpbWVyLCBicl9tdWx0aWNhc3RfZ3JvdXBfZXhwaXJlZCwgMCk7
DQo+ICAJZXJyID0gcmhhc2h0YWJsZV9sb29rdXBfaW5zZXJ0X2Zhc3QoJmJyLT5tZGJfaGFzaF90
YmwsICZtcC0+cmhub2RlLA0KPiBAQCAtMTE2OSw2ICsxMTcxLDggQEAgc3RydWN0IG5ldF9icmlk
Z2VfcG9ydF9ncm91cCAqYnJfbXVsdGljYXN0X25ld19wb3J0X2dyb3VwKA0KPiAgCXAtPmtleS5h
ZGRyID0gKmdyb3VwOw0KPiAgCXAtPmtleS5wb3J0ID0gcG9ydDsNCj4gIAlwLT5mbGFncyA9IGZs
YWdzOw0KPiArCWlmIChncm91cC0+cHJvdG8gPT0gaHRvbnMoMCkpDQo+ICsJCXAtPmZsYWdzIHw9
IE1EQl9QR19GTEFHU19MMjsNCg0KQ2FuIHdlIHBhc3MgdGhlIGZsYWcgZnJvbSB0aGUgY2FsbGVy
PyBUaGlzIGtpbmQgb2YgYmVhdHMgdGhlIHB1cnBvc2Ugb2YNCnJlY2VpdmluZyB0aGUgZmxhZ3Mg
YXMgYW4gYXJndW1lbnQuIDopDQoNCj4gIAlwLT5maWx0ZXJfbW9kZSA9IGZpbHRlcl9tb2RlOw0K
PiAgCXAtPnJ0X3Byb3RvY29sID0gcnRfcHJvdG9jb2w7DQo+ICAJcC0+bWNhc3RfZ2MuZGVzdHJv
eSA9IGJyX211bHRpY2FzdF9kZXN0cm95X3BvcnRfZ3JvdXA7DQo+IEBAIC0xMjAzLDYgKzEyMDcs
MTAgQEAgdm9pZCBicl9tdWx0aWNhc3RfaG9zdF9qb2luKHN0cnVjdCBuZXRfYnJpZGdlX21kYl9l
bnRyeSAqbXAsIGJvb2wgbm90aWZ5KQ0KPiAgCQlpZiAobm90aWZ5KQ0KPiAgCQkJYnJfbWRiX25v
dGlmeShtcC0+YnItPmRldiwgbXAsIE5VTEwsIFJUTV9ORVdNREIpOw0KPiAgCX0NCj4gKw0KPiAr
CWlmIChtcC0+bDIpDQo+ICsJCXJldHVybjsNCj4gKw0KPiAgCW1vZF90aW1lcigmbXAtPnRpbWVy
LCBqaWZmaWVzICsgbXAtPmJyLT5tdWx0aWNhc3RfbWVtYmVyc2hpcF9pbnRlcnZhbCk7DQo+ICB9
DQo+ICANCj4gQEAgLTM2OTAsNyArMzY5OCw3IEBAIGJvb2wgYnJfbXVsdGljYXN0X2hhc19xdWVy
aWVyX2FueXdoZXJlKHN0cnVjdCBuZXRfZGV2aWNlICpkZXYsIGludCBwcm90bykNCj4gIAltZW1z
ZXQoJmV0aCwgMCwgc2l6ZW9mKGV0aCkpOw0KPiAgCWV0aC5oX3Byb3RvID0gaHRvbnMocHJvdG8p
Ow0KPiAgDQo+IC0JcmV0ID0gYnJfbXVsdGljYXN0X3F1ZXJpZXJfZXhpc3RzKGJyLCAmZXRoKTsN
Cj4gKwlyZXQgPSBicl9tdWx0aWNhc3RfcXVlcmllcl9leGlzdHMoYnIsICZldGgsIE5VTEwpOw0K
PiAgDQo+ICB1bmxvY2s6DQo+ICAJcmN1X3JlYWRfdW5sb2NrKCk7DQo+IGRpZmYgLS1naXQgYS9u
ZXQvYnJpZGdlL2JyX3ByaXZhdGUuaCBiL25ldC9icmlkZ2UvYnJfcHJpdmF0ZS5oDQo+IGluZGV4
IDM0NTExOGUzNWM0Mi4uNjNhOThjMWFmMzUxIDEwMDY0NA0KPiAtLS0gYS9uZXQvYnJpZGdlL2Jy
X3ByaXZhdGUuaA0KPiArKysgYi9uZXQvYnJpZGdlL2JyX3ByaXZhdGUuaA0KPiBAQCAtMjE1LDYg
KzIxNSw3IEBAIHN0cnVjdCBuZXRfYnJpZGdlX2ZkYl9lbnRyeSB7DQo+ICAjZGVmaW5lIE1EQl9Q
R19GTEFHU19GQVNUX0xFQVZFCUJJVCgyKQ0KPiAgI2RlZmluZSBNREJfUEdfRkxBR1NfU1RBUl9F
WENMCUJJVCgzKQ0KPiAgI2RlZmluZSBNREJfUEdfRkxBR1NfQkxPQ0tFRAlCSVQoNCkNCj4gKyNk
ZWZpbmUgTURCX1BHX0ZMQUdTX0wyCQlCSVQoNSkNCj4gIA0KPiAgI2RlZmluZSBQR19TUkNfRU5U
X0xJTUlUCTMyDQo+ICANCj4gQEAgLTI3Miw2ICsyNzMsNyBAQCBzdHJ1Y3QgbmV0X2JyaWRnZV9t
ZGJfZW50cnkgew0KPiAgCXN0cnVjdCBuZXRfYnJpZGdlX3BvcnRfZ3JvdXAgX19yY3UgKnBvcnRz
Ow0KPiAgCXN0cnVjdCBicl9pcAkJCWFkZHI7DQo+ICAJYm9vbAkJCQlob3N0X2pvaW5lZDsNCj4g
Kwlib29sCQkJCWwyOw0KPiAgDQo+ICAJc3RydWN0IHRpbWVyX2xpc3QJCXRpbWVyOw0KPiAgCXN0
cnVjdCBobGlzdF9ub2RlCQltZGJfbm9kZTsNCj4gQEAgLTg3MSw3ICs4NzMsOCBAQCBfX2JyX211
bHRpY2FzdF9xdWVyaWVyX2V4aXN0cyhzdHJ1Y3QgbmV0X2JyaWRnZSAqYnIsDQo+ICB9DQo+ICAN
Cj4gIHN0YXRpYyBpbmxpbmUgYm9vbCBicl9tdWx0aWNhc3RfcXVlcmllcl9leGlzdHMoc3RydWN0
IG5ldF9icmlkZ2UgKmJyLA0KPiAtCQkJCQkgICAgICAgc3RydWN0IGV0aGhkciAqZXRoKQ0KPiAr
CQkJCQkgICAgICAgc3RydWN0IGV0aGhkciAqZXRoLA0KPiArCQkJCQkgICAgICAgY29uc3Qgc3Ry
dWN0IG5ldF9icmlkZ2VfbWRiX2VudHJ5ICptZGIpDQo+ICB7DQo+ICAJc3dpdGNoIChldGgtPmhf
cHJvdG8pIHsNCj4gIAljYXNlIChodG9ucyhFVEhfUF9JUCkpOg0KPiBAQCAtODgzLDcgKzg4Niw3
IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBicl9tdWx0aWNhc3RfcXVlcmllcl9leGlzdHMoc3RydWN0
IG5ldF9icmlkZ2UgKmJyLA0KPiAgCQkJJmJyLT5pcDZfb3RoZXJfcXVlcnksIHRydWUpOw0KPiAg
I2VuZGlmDQo+ICAJZGVmYXVsdDoNCj4gLQkJcmV0dXJuIGZhbHNlOw0KPiArCQlyZXR1cm4gISEo
bWRiICYmIG1kYi0+bDIpOw0KPiAgCX0NCj4gIH0NCj4gIA0KDQo=
