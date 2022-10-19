Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB4F6121E5
	for <lists.bridge@lfdr.de>; Sat, 29 Oct 2022 11:38:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1855E410C9;
	Sat, 29 Oct 2022 09:38:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1855E410C9
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=icloud.com header.i=@icloud.com header.a=rsa-sha256 header.s=1a1hai header.b=NheKbgSZ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B9ndiqZwQV3X; Sat, 29 Oct 2022 09:38:07 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id C01B3409FD;
	Sat, 29 Oct 2022 09:38:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C01B3409FD
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4EC70C007B;
	Sat, 29 Oct 2022 09:38:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 909D7C002D
 for <bridge@lists.linux-foundation.org>; Wed, 19 Oct 2022 11:59:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 584C941B5B
 for <bridge@lists.linux-foundation.org>; Wed, 19 Oct 2022 11:59:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 584C941B5B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RXy3bwt2hflz for <bridge@lists.linux-foundation.org>;
 Wed, 19 Oct 2022 11:59:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99D4341B3A
Received: from ci74p00im-qukt09082301.me.com (ci74p00im-qukt09082301.me.com
 [17.57.156.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 99D4341B3A
 for <bridge@lists.linux-foundation.org>; Wed, 19 Oct 2022 11:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1666180739;
 bh=Hbw27RqrnkmZsouexnsyZjMFcBnI4MG8WYB6dVJNrA8=;
 h=Content-Type:From:Mime-Version:Subject:Message-Id:Date:To;
 b=NheKbgSZ/D6A4KTHxD5eQ8Uo4Yqx7MwiwkFvKP9R4bOe1VK/EgAKNKxjf0R0Z39Id
 mCj9xi8hsw3Q24iqfFpslb+ckmrX8b37ECj/XPz7G75uEQEkq++qbdMKk4mOsPF6Ix
 WCIhMTG4OO3E7thVlYetT7++q/MIRa+RWQD81b20xYC226BSogeUKlN+5KaQeHGNIz
 bGJEg0pFHd/D25b5E2m0VlFE4/RPLlTZktO6p3SN3Yo9PZW1K5/K+FeKhuCQgVE0Fz
 DzRTNx5THrJ1Y71J3VrnFD5pYk70Qq+66z+Doi9foW90P8pdNO6dRxO+otldEi2Izf
 o8ZQwM0Ifp/TA==
Received: from smtpclient.apple (ci77p00im-dlb-asmtp-mailmevip.me.com
 [17.57.156.26])
 by ci74p00im-qukt09082301.me.com (Postfix) with ESMTPSA id 2E804F803E1
 for <bridge@lists.linux-foundation.org>; Wed, 19 Oct 2022 11:58:59 +0000 (UTC)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (1.0)
Message-Id: <FC11D4BD-CB53-4417-9E16-799C2777F573@icloud.com>
Date: Wed, 19 Oct 2022 07:58:57 -0400
To: bridge@lists.linux-foundation.org
X-Mailer: iPhone Mail (19G82)
X-Proofpoint-GUID: MTiqshZtpKbMw6DxrKChNinl3o8eHXIU
X-Proofpoint-ORIG-GUID: MTiqshZtpKbMw6DxrKChNinl3o8eHXIU
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
 =?UTF-8?Q?2903e8d5c8f:6.0.425,18.0.572,17.11.62.513.0000000_definitions?=
 =?UTF-8?Q?=3D2022-01-11=5F01:2022-01-11=5F01,2020-02-14=5F11,2021-12-02?=
 =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 phishscore=0 bulkscore=0
 mlxlogscore=797 clxscore=1011 adultscore=0 mlxscore=0 malwarescore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2210190066
X-Mailman-Approved-At: Sat, 29 Oct 2022 09:38:05 +0000
Subject: Re: [Bridge] [PATCH 106/141] net: bridge: Fix fall-through warnings
	for Clang
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
From: Sela Dona via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Sela Dona <seladona@icloud.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

=EF=BB=BF

Sent from my iPhone=
