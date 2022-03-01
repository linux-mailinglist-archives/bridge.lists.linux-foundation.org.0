Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D644C903A
	for <lists.bridge@lfdr.de>; Tue,  1 Mar 2022 17:21:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4CA3940761;
	Tue,  1 Mar 2022 16:21:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ssb_3AqOLeQS; Tue,  1 Mar 2022 16:21:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id D61FD4054E;
	Tue,  1 Mar 2022 16:21:49 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7E90BC007B;
	Tue,  1 Mar 2022 16:21:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ABA39C001A
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 16:21:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 95F3D60EA4
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 16:21:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JwWCYd4_O3j4 for <bridge@lists.linux-foundation.org>;
 Tue,  1 Mar 2022 16:21:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B897D60E8F
 for <bridge@lists.linux-foundation.org>; Tue,  1 Mar 2022 16:21:46 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id kt27so3452480ejb.0
 for <bridge@lists.linux-foundation.org>; Tue, 01 Mar 2022 08:21:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Jx8eZ/jgrSE5jtq/IeRwHlPFovNus3LfRlDhg1AW13A=;
 b=en9t2M3R/YDinK1EfneMzgv5fnKSDbV2GexbGi8qUVmwTSDoEp15UHwZA/M2o65vTS
 1amV/o9IYHjiDxmjxen42QPAkYKpPfbSgHnHpSavW1XfsTw58PopoiG6cKAbBHAUIh80
 Z9vXf90FSFzOih7QWrwZWVuvpsy21CRZGjywUCXNukoL5p8tTEzXYMkVKhBYpK7eeQp1
 iB71j6/AwNLOcWKUYtR2hDgFxCZC/LqpqjPme7lTy8Lh7Q6qlP0sr34zBSPk7aMnM/gD
 TaZi52W9EXR5i0OekbRJVPsXfV+ELpeg9leOt1TkHdfXLGOy0pvBzQ4B3q69dCXgfx6T
 Y+XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Jx8eZ/jgrSE5jtq/IeRwHlPFovNus3LfRlDhg1AW13A=;
 b=dyqUWmhpgkbcYazAIuVPEGFwbXCjBREov7+dIih74roq3TiA2hgXUcvGSre8ljIqRI
 rcPcSZk8hZDbLqTCkH8VI181Yi2D7skrYCmNIE+ojizIo8aVthiCW4wImCthduy1IiqX
 /t0dCYMAK6GVRtlyiLGeKzC3FcnGpywOtHcxy9Da8w3aL8d70Y1EV/xyk/iGcdmcgAE/
 PxocyEkdnSGfLyRxkQozVzh8nsNMpKDWINxKBnNpidQ3/w69APPtjJnfBUcRccMmPK4x
 Txv+RXT577YZyyE3BMFh33WCmrrkXvYA0iesvcpEq+zdyxNWa37Uw/lHDCHx2PWHjs4o
 T5yA==
X-Gm-Message-State: AOAM532Xwg0JX1c8P9K/JzahBwGCSIqnb9ONP1dyuWWd8/qA4UTJFL6+
 S2ZXRRWJbWqocLT+C1Ya9U8=
X-Google-Smtp-Source: ABdhPJxGtOTYdS7L0n3Cy3fp114D1jiHE3zZ+VjSMi5+/5L86y6D2puo9eWWttxwjz7E6uhYGujEWA==
X-Received: by 2002:a17:906:3ac6:b0:6cb:6808:95f9 with SMTP id
 z6-20020a1709063ac600b006cb680895f9mr19934324ejd.375.1646151704776; 
 Tue, 01 Mar 2022 08:21:44 -0800 (PST)
Received: from skbuf ([188.25.231.156]) by smtp.gmail.com with ESMTPSA id
 ey10-20020a1709070b8a00b006cee56b87b9sm5486818ejc.141.2022.03.01.08.21.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Mar 2022 08:21:44 -0800 (PST)
Date: Tue, 1 Mar 2022 18:21:42 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220301162142.2rv23g4cyd2yacbs@skbuf>
References: <20220301100321.951175-1-tobias@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220301100321.951175-1-tobias@waldekranz.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v2 net-next 00/10] net: bridge: Multiple
	Spanning Trees
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

Hi Tobias,

On Tue, Mar 01, 2022 at 11:03:11AM +0100, Tobias Waldekranz wrote:
> A proposal for the corresponding iproute2 interface is available here:
> 
> https://github.com/wkz/iproute2/tree/mst

Please pardon my ignorance. Is there a user-mode STP protocol application
that supports MSTP, and that you've tested these patches with?
I'd like to give it a try.
