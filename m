Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CCCFD14B295
	for <lists.bridge@lfdr.de>; Tue, 28 Jan 2020 11:29:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E1A0120501;
	Tue, 28 Jan 2020 10:29:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u9kogWpmxGpu; Tue, 28 Jan 2020 10:29:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 10D861FF59;
	Tue, 28 Jan 2020 10:29:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EABCFC0171;
	Tue, 28 Jan 2020 10:29:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C4374C0171
 for <bridge@lists.linux-foundation.org>; Tue, 28 Jan 2020 10:11:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B292481E40
 for <bridge@lists.linux-foundation.org>; Tue, 28 Jan 2020 10:11:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wKDFiwcKQF_I for <bridge@lists.linux-foundation.org>;
 Tue, 28 Jan 2020 10:11:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-eopbgr60091.outbound.protection.outlook.com [40.107.6.91])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 465A481E25
 for <bridge@lists.linux-foundation.org>; Tue, 28 Jan 2020 10:11:05 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I3BPANtDab9JoLtXokUF31PqykxLmJ9icKtGrxrW/IcE1xvY6iQgo5YUxlpihH5CVqd9dAC9E/7ADVqvb21Gsdc5Zv3uvu0FANO26dLZsMPCYQcdO3kQL+bI4NTVte4YVkt+7hOdWq0AAWa4DwdUIoN2toWxTb91IcyQsFQDCZ42GeOnNJvkrd5+yJEm05Ac3+wYjVm45WSLhMPlu0dvgm+Jsc9xouYGjcpIArq8aSZ+ambxcrVEUE+6H86tXD9dcfovgoelHHg2oQnh+RDcwMLgqUZKEZLigW9nk4MnQdNTuWjqD7gubXKgRRss9We19Xmk9gQTJcMemp/4k1eJxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L0DMqGlTKm8HHRe49C+g1orF4N2RnDiTm6X2wJTIsjI=;
 b=deXNNTH8YZTscawF8YXf2bwn6lYR/jqJ/kRW5Prj0c8454S88osK0m+XOxxYUUyRdrqh5Q1NY/Wjsae6kfz/wizQjepMEK+oz4k70LZXtK801jobnhTMFbSFMzsjj8H4DsQ3kqJGz1IsuQcfLWDTw8ZpJZfYUUnO+scEHf80ViNttz+/1AkTzncnYFxKZLSSqdlEsafcjV5iGqnLQjD0PSs1G6sQAKgMbN1cgeVymMgpZjRMW/jaNP5V8xSDrCfu5EPCfBKHjqiKOYCl+U1WrhR4cTMbzDr1gQR8qcWwarumI1ulMmA9Ej3vPiRSEwtX+XXT250NJNIcNn2NVVBDLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=televic.com; dmarc=pass action=none header.from=televic.com;
 dkim=pass header.d=televic.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=televic.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L0DMqGlTKm8HHRe49C+g1orF4N2RnDiTm6X2wJTIsjI=;
 b=NmTtoeGOjdeqt32BRNT6LQbo05Hr/7wDh8H2bwjDTQOLnNRbYow0SCAIvKmj3Dkw46umZAbL9aPZliUdYe02aY19LkWhczmMih33e622PEE0crCWHXJISSsN4lVBSVUjoLFWaEbLwBGgZ9SdijgCgCgMqgUaQOC02oFL3hLI3Zk=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=J.Lambrecht@TELEVIC.com; 
Received: from VI1PR07MB5085.eurprd07.prod.outlook.com (20.177.203.77) by
 VI1PR07MB3438.eurprd07.prod.outlook.com (10.170.238.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.18; Tue, 28 Jan 2020 09:56:24 +0000
Received: from VI1PR07MB5085.eurprd07.prod.outlook.com
 ([fe80::6591:ac75:8bbf:2349]) by VI1PR07MB5085.eurprd07.prod.outlook.com
 ([fe80::6591:ac75:8bbf:2349%5]) with mapi id 15.20.2686.019; Tue, 28 Jan 2020
 09:56:24 +0000
From: =?UTF-8?Q?J=c3=bcrgen_Lambrecht?= <j.lambrecht@televic.com>
To: Andrew Lunn <andrew@lunn.ch>,
 "Allan W. Nielsen" <allan.nielsen@microchip.com>
References: <20200124161828.12206-1-horatiu.vultur@microchip.com>
 <20200124161828.12206-10-horatiu.vultur@microchip.com>
 <20200125161615.GD18311@lunn.ch>
 <20200126130111.o75gskwe2fmfd4g5@soft-dev3.microsemi.net>
 <20200126171251.GK18311@lunn.ch>
 <20200127105746.i2txggfnql4povje@lx-anielsen.microsemi.net>
 <20200127134053.GG12816@lunn.ch>
Message-ID: <eac22f69-94ae-2a36-f974-9aa840ac9bfc@televic.com>
Date: Tue, 28 Jan 2020 10:56:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <20200127134053.GG12816@lunn.ch>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-ClientProxiedBy: AM0PR0202CA0018.eurprd02.prod.outlook.com
 (2603:10a6:208:1::31) To VI1PR07MB5085.eurprd07.prod.outlook.com
 (2603:10a6:803:9d::13)
MIME-Version: 1.0
Received: from [10.40.216.140] (84.199.255.188) by
 AM0PR0202CA0018.eurprd02.prod.outlook.com (2603:10a6:208:1::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2665.21 via Frontend
 Transport; Tue, 28 Jan 2020 09:56:24 +0000
X-Originating-IP: [84.199.255.188]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d8de529b-b420-422e-8c5f-08d7a3d855ff
X-MS-TrafficTypeDiagnostic: VI1PR07MB3438:
X-Microsoft-Antispam-PRVS: <VI1PR07MB343896DDC73644AFE14C76E8FF0A0@VI1PR07MB3438.eurprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 029651C7A1
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(39850400004)(396003)(376002)(366004)(346002)(199004)(189003)(31686004)(2906002)(6486002)(26005)(186003)(53546011)(31696002)(16526019)(86362001)(956004)(2616005)(7416002)(81156014)(81166006)(8676002)(8936002)(66574012)(36756003)(5660300002)(52116002)(316002)(66476007)(66946007)(66556008)(4326008)(16576012)(478600001)(110136005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR07MB3438;
 H:VI1PR07MB5085.eurprd07.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: TELEVIC.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: b67YXvIqJv5xEm6JQRhGq61ZkUa0DCCyvacPFF1hSpUVQQaDgSXqumkPRFJPPVKLh73ZPNOzSb0MUf+yVWpTGJjl5QAzooeCVgT0HY432F9MsHjTmwqxu8sIoVZBYGtP2sgHsTLaKJWtkq80Yt17gUxN0c870t4u6NjmneScIxrgI1je8sHhgCejnFyTsWEoEM1UVyx/rtkpZYbYUuEbXhsk2x7JrOEdRZ09qPYXQfsvdvC6PhvTZlVBUsXY88IbTwP5L7H7Dgvb8CPYM0tIOD1c+bnMnctR+SHMDYnIatHTno9uaq9Q8z70KH2YlC78wiT8y96CUZJSEwUYcfT3cPzMiWfH2brtfDKsizlROldN0quiqvgCtEHg0fxSRPn08a+9BFuxMZVCiNnmXpdsfNF0Pyz5zMSONjqq0rsj2WnCZJMtTXizdSGxAJM8TMN3
X-MS-Exchange-AntiSpam-MessageData: td45fFvtkblVDbDIBXy3/Gf1jCzTonkftdW9G9ifDe/g13rIskgHkcPzFlKoFr2QYd1sNDSFYsu7R9w9w/cBV0A4p28ihhDeKOZ/Gh2PmnJfnFNKL42ize8jKywav3KFJ8MUOj88IBxS4b2E4r9Jug==
X-OriginatorOrg: televic.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8de529b-b420-422e-8c5f-08d7a3d855ff
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2020 09:56:24.8868 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 68a8593e-d1fc-4a6a-b782-1bdcb0633231
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EvV7q3kcrxTNsBa50Tf5Dq7CRGULcfxN6wZjMGJrqsvttgwG0UIHWv5d3AxY0mF2lAmFXVts5B/6LVHaYg2OwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR07MB3438
X-Mailman-Approved-At: Tue, 28 Jan 2020 10:29:14 +0000
Cc: ivecera@redhat.com, jiri@resnulli.us, nikolay@cumulusnetworks.com,
 netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 davem@davemloft.net, UNGLinuxDriver@microchip.com,
 anirudh.venkataramanan@intel.com, jeffrey.t.kirsher@intel.com,
 olteanv@gmail.com, Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: Re: [Bridge] [RFC net-next v3 09/10] net: bridge: mrp: Integrate
 MRP into the bridge
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
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On 1/27/20 2:40 PM, Andrew Lunn wrote:
>> Again, I do not know how other HW is designed, but all the SOC's we are
>> working with, does allow us to add a TCAM rule which can redirect these
>> frames to the CPU even on a blocked port.
> It is not in scope for what you are doing, but i wonder how we
> describe this in a generic Linux way? And then how we push it down to
> the hardware?
>
> For the Marvell Switches, it might be possible to do this without the
> TCAM. You can add forwarding DB entries marked as Management. It is
> unclear if this overrides the blocked state, but it would be a bit odd
> if it did not.
A MGMT frame does override the blocked state according the the datasheet.
And any MAC address can be loaded, not only 01:80:C2:00:00:0x (802.1D) and 01:80:C2:00:00:2x (GARP). Then the ATU is used instead of something specialized.
(referring to Andrew's email of 20200126 6:12 PM)
(I only checked again 88E6250/88E6220/88E6071/88E6070/88E6020 Functional Specification)


Kind regards,

J�rgen


