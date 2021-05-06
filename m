Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCF63752B4
	for <lists.bridge@lfdr.de>; Thu,  6 May 2021 12:59:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AAD8C6078E;
	Thu,  6 May 2021 10:59:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JRnMWOnYapR3; Thu,  6 May 2021 10:59:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E20760753;
	Thu,  6 May 2021 10:59:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AC89DC001C;
	Thu,  6 May 2021 10:59:50 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 89F1EC0001
 for <bridge@lists.linux-foundation.org>; Thu,  6 May 2021 10:59:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 63B7F836D5
 for <bridge@lists.linux-foundation.org>; Thu,  6 May 2021 10:59:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id obUn5KhD6ljb for <bridge@lists.linux-foundation.org>;
 Thu,  6 May 2021 10:59:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6B67683670
 for <bridge@lists.linux-foundation.org>; Thu,  6 May 2021 10:59:48 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id z6so5131754wrm.4
 for <bridge@lists.linux-foundation.org>; Thu, 06 May 2021 03:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=sGBr1I+38iZ7SVnFDQNVpTYJGDmr4wfSvLU5slITSjA=;
 b=YcOxJyvtIiLWGDxusQyV7Mqmlk0DFwcmK6bn/eaRqgA0rO7IdzmFOlcOavH/SYkGaj
 nqnb7pQWPXG5UhO5Qg8THbhrZqElOnab8VVU/acYpEtb506ySsNM02Os7mZPj2ZIxLd1
 5yPfZOGq0jqBdyCR9EHZjaZ8HMm5vXzmIYtJMMnMto6+PgEmvAT1HZJci9R0AC1/gq13
 wxjkovi2ItZht+bssZjjErBf3jh5Rk/5Fx/SpN4yAMHJI0QucMvBHhZJiJstbt4b5CYC
 /mrYkmAo1Oum/XFuWDvIQUqfnzAaV7pZ4k2iSpNMOiIR9tU1Y4T5ZIJ1snacVTFpFUah
 DPcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=sGBr1I+38iZ7SVnFDQNVpTYJGDmr4wfSvLU5slITSjA=;
 b=EqU5ZXoV2LmmkZZKL1vx69969tljo5LbPm5CRXCBRXBmUkkn8v0b+bUokZDuv/yxbF
 utCu91RZKPdS/kHvbK7CYwrfVuiCTOFqxO4qlDv1/wd3SeO5sVGlWsV+YpAvpj7kalVG
 oxjxYa2KEvZG1st+CHS1mi3jHaEzHsgaYeBNdJsNMcVESF1hQ6WlUFD/8f8Ge6IzZDrc
 kV+IVuVMGuQwnCVcpwp/eta9ed4mNf80NpUh39/Q05TRz5nzAMlQ7TYo4YWE6L46urRJ
 3o+U3IAXez/9QY0uS9s2juVp2WyEULvXJ7EJ9iezG6M9PXBMvc/MBqVXmXxD/GiOOBCA
 YE3g==
X-Gm-Message-State: AOAM531E97joaB8TOPtIHjfMnnekiy0p0f232SFofuAdFtMKdZhIOaSS
 QZqne8KC85mEKsPOrxx2YtI=
X-Google-Smtp-Source: ABdhPJxMn3yxbxrqEVmXgrqTUt4R+jIFafwwkx1wFeuVe7bF2Nj152JSiIo1mXv2gHFLJacAAjrsiQ==
X-Received: by 2002:a05:6000:1051:: with SMTP id
 c17mr4259342wrx.43.1620298786654; 
 Thu, 06 May 2021 03:59:46 -0700 (PDT)
Received: from skbuf ([86.127.41.210])
 by smtp.gmail.com with ESMTPSA id z6sm2875732wmf.9.2021.05.06.03.59.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 May 2021 03:59:46 -0700 (PDT)
Date: Thu, 6 May 2021 13:59:44 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20210506105944.tclatsr4jgdk6qw2@skbuf>
References: <20210426170411.1789186-1-tobias@waldekranz.com>
 <YI6+JXDG/4K30G5L@shredder> <87bl9snocq.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87bl9snocq.fsf@waldekranz.com>
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jiri@resnulli.us,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 vivien.didelot@gmail.com, Ido Schimmel <idosch@idosch.org>, nikolay@nvidia.com,
 roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [RFC net-next 0/9] net: bridge: Forward offloading
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

On Mon, May 03, 2021 at 11:44:21AM +0200, Tobias Waldekranz wrote:
> > Do you expect this optimization to only work when physical netdevs are
> > enslaved to the bridge? What about LAG/VLANs?
> 
> LAGs should definitely work once the .ndo_dfwd_{add,del}_station helpers
> are in place.
> 
> Stacked VLANs could also be made to work. But they may require some
> extra work.
> 
> In v1, the bridge will always send offloaded frames with the VLAN
> information intact, even if the port is configured to egress the VID
> untagged. This is needed so that the driver can determine the correct
> VID to use in cases where multiple VIDs are set to egress untagged.
> 
> If any kind of VID translation takes place I think things get very
> sticky. Then again, that is maybe not all that defined without this
> change applied either?
> 
> What is the typical use-case for using an "external" stacked VLAN device
> over configuring the VLAN inside the bridge?

I think it will be very sticky to support forwarding offload for this
setup anyway:

            br0
swp0.100  swp0.101   swp1.100

Need to understand what the use case is. The correct behavior IMO is for
the physical switch port to remain standalone and for the bridge to know
that the bridge port (swp0.100) is not offloaded.
FWIW I had an attempt to handle situations like this here:
https://patchwork.kernel.org/project/netdevbpf/patch/20210224114350.2791260-17-olteanv@gmail.com/

I will let Tobias finish with his forwarding offload patch set before
rebasing and resending mine, his work looks a lot better at this point.
