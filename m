Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDDE191A92
	for <lists.bridge@lfdr.de>; Tue, 24 Mar 2020 21:10:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8113784C4E;
	Tue, 24 Mar 2020 20:10:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 37iOPnhoTRJN; Tue, 24 Mar 2020 20:10:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3C4C985516;
	Tue, 24 Mar 2020 20:09:49 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1D9B7C1D7C;
	Tue, 24 Mar 2020 20:09:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F2499C0177
 for <bridge@lists.linux-foundation.org>; Tue, 24 Mar 2020 20:09:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E9D402034A
 for <bridge@lists.linux-foundation.org>; Tue, 24 Mar 2020 20:09:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q+7xsZ7zjcNG for <bridge@lists.linux-foundation.org>;
 Tue, 24 Mar 2020 20:09:46 +0000 (UTC)
X-Greylist: delayed 00:05:51 by SQLgrey-1.7.6
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
 by silver.osuosl.org (Postfix) with ESMTPS id E46321FE65
 for <bridge@lists.linux-foundation.org>; Tue, 24 Mar 2020 20:09:45 +0000 (UTC)
Date: Tue, 24 Mar 2020 21:03:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1585080231;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type;
 bh=mzYiXMHjEdeFOpM2jXgMODQ7KCgcwOxQXAVBG3sD1yc=;
 b=PnWbEUO3sqP4DQY+VCoaDLG5HfuezYxQ+LNfCTs2YHZDR9ulqfqyaDDMZeoX+jvL48VkfA
 FUYJi9R+glbA6Fy+BdLtDtBkgVAZEWCwMj5KSHlR/d8ZE0KYKOzdS/pQHzafzyF/FR1weX
 ZTM1Y/aC9TiXsc0lGUOUq5PIMO+YtR33FAh2NcJkPksK/xeUSMkCLe7akz2D37pr2fujQe
 XrgCEijLKk8qOcdv1kIootanJtSnbdQXxIEJxjRhNLXStQUDFrNLbEmsT3Xi+8sFcJAFnA
 al8U4/AIcdkGHkr2vmHTua2QzskMbKCL5zDXTz9LUqbXrs55N9ae9QqCiajsmQ==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: bridge@lists.linux-foundation.org
Message-ID: <20200324200350.GB2357@otheros>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
Subject: [Bridge] Fwd: Re: [pim] IGMPv3/MLDv2 implementation and deployment
	survey
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

Is there anyone on the list who would like to fill out this
questionnaire on behave of the Linux bridge implementation?
Or maybe someone already did?

https://tools.ietf.org/html/draft-eckert-pim-igmp-mld-questionnaire-02
-> "Questionnaire for Vendors or Host Implementors"

I got an email that the deadline was extended to March 31. So
we would have one more week.


And maybe the switchdev users might be interested to fill this out
for their vendor, for their specific hardware, too.


----- Forwarded message from Stig Venaas <stig@venaas.com> -----

Date: Tue, 25 Feb 2020 13:24:39 -0800
From: Stig Venaas <stig@venaas.com>
To: pim@ietf.org
Cc: pim-chairs@ietf.org
Subject: Re: [pim] IGMPv3/MLDv2 implementation and deployment survey

The IETF PIM Working Group intends to progress IGMPv3 and MLDv2 from
Proposed Standards to Internet Standards. To facilitate that, the working
group  would like to get input from operators and others deploying multicast,
and implementors of these protocols, to learn what the current
implementation and deployment status is.

If you are using multicast, or have implemented these protocols, please
respond to the survey at
https://jisc.onlinesurveys.ac.uk/implementation-and-deployment-of-igmpv3-and-mldv2

It is sufficient to get responses from one person from each organization.
The survey closes on March 13 2020.

To get input from as many organizations as possible, please help forward
this email, or distribute the URL, to any contacts you may have that have
deployment or implementation experiences, on relevant mailing lists etc.

If you have any queries about the survey, please contact the PIM WG chairs
at pim-chairs@ietf.org.

Regards Stig and Mike

_______________________________________________
pim mailing list
pim@ietf.org
https://www.ietf.org/mailman/listinfo/pim

----- End forwarded message -----
