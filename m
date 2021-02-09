Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8526931552A
	for <lists.bridge@lfdr.de>; Tue,  9 Feb 2021 18:36:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2ABC4858D4;
	Tue,  9 Feb 2021 17:36:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8JcODljggbfc; Tue,  9 Feb 2021 17:36:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AB1D88551F;
	Tue,  9 Feb 2021 17:36:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8F0F5C1834;
	Tue,  9 Feb 2021 17:36:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 81106C013A
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 17:36:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6842886B0B
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 17:36:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 83FxemuL0QDQ for <bridge@lists.linux-foundation.org>;
 Tue,  9 Feb 2021 17:36:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
 [209.85.208.42])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1061B869C3
 for <bridge@lists.linux-foundation.org>; Tue,  9 Feb 2021 17:36:36 +0000 (UTC)
Received: by mail-ed1-f42.google.com with SMTP id s3so24873819edi.7
 for <bridge@lists.linux-foundation.org>; Tue, 09 Feb 2021 09:36:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=3IKSUC2PbMBLcmAxJNHDlsNxrnoGLUkLdRWIm40sEpc=;
 b=LGw97nE1cdPwc3VbbdI7b3jcHyQ5rDSJXCpydItAPA5Duy7SnDry4v7J4PxhT0geS6
 Q4VfKF0h844R3hVgCo54tdyExYyz5Mey9SqemYKef05Yhwl4eX8VZhJCjjGd2Xa90O01
 PnHKbpH7BtHXyaPZdZzcY8cS02pRNsKUyPv6GdpdSnLDmd10xlE6NysARS0+T9Q2KY8d
 x+HvCxriBjgv2a78wFPePpW0sqjFfX106VbA50dcMre5AA483PPmKFWlhW2zJyqeYOF0
 C+PC6bAZ12wwNYmvAyxSoUAZXPDe8phSMQd5gPunsSFUMFjEqG1rYCstOM4qG53nb86p
 roMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=3IKSUC2PbMBLcmAxJNHDlsNxrnoGLUkLdRWIm40sEpc=;
 b=sC1TZpaeZg3eSfQ9lxyN1k3okScvgABUDkz6fKV18C/8+d/S9CYV0uEvh53BSoDcdn
 cP0x4+0AspHYzRiyRB4GwJ0VLOLkVmSgCLIR6waXtpMndn+MEalj5QG0jMo7461ShFdM
 H+24M5Uqfkle0XtZohYlOka7Gfx7+1Z9Lm0J8IvzuaH09oAxpu1JiJJWKywWnRFJkYiG
 gk6bsSnSHY9A85gKUQFpXm+6i4kbgnqem0VUaxU7ciTTMEq8PZsyxH0LnorXH1QWhnjf
 B8u6DnUC+2h6C1Vu342iA/b4ZVtM7C37ih8/cUw7HF9GZ836Nolqk4Z0L7ANbBjpnfXB
 77FQ==
X-Gm-Message-State: AOAM532tBgfpFZPs3CWGohvDCw/VWZrFGmFnZMG/pJ5qZDq4PMbLTHD/
 N9E+sbyJSMjvXQMAZsK8iRE=
X-Google-Smtp-Source: ABdhPJzwBwXcr3FNir+11tzCbCmVt5tv5onkeBPfFP5BzJvTttLymfdZC3IkFLRtUk/UOK6Q6I7vng==
X-Received: by 2002:aa7:c58e:: with SMTP id g14mr24696022edq.318.1612892194600; 
 Tue, 09 Feb 2021 09:36:34 -0800 (PST)
Received: from skbuf (5-12-227-87.residential.rdsnet.ro. [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id z16sm6721317ejd.102.2021.02.09.09.36.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 09:36:33 -0800 (PST)
Date: Tue, 9 Feb 2021 19:36:31 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Message-ID: <20210209173631.c75cdjxphwzipeg5@skbuf>
References: <20210209151936.97382-1-olteanv@gmail.com>
 <20210209151936.97382-4-olteanv@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210209151936.97382-4-olteanv@gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Vadym Kochan <vkochan@marvell.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 Taras Chornyi <tchornyi@marvell.com>, Ido Schimmel <idosch@idosch.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 linux-omap@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>
Subject: Re: [Bridge] [PATCH v2 net-next 03/11] net: bridge: don't print in
 br_switchdev_set_port_flag
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

On Tue, Feb 09, 2021 at 05:19:28PM +0200, Vladimir Oltean wrote:
> From: Vladimir Oltean <vladimir.oltean@nxp.com>
>
> Currently br_switchdev_set_port_flag has two options for error handling
> and neither is good:
> - The driver returns -EOPNOTSUPP in PRE_BRIDGE_FLAGS if it doesn't
>   support offloading that flag, and this gets silently ignored and
>   converted to an errno of 0. Nobody does this.
> - The driver returns some other error code, like -EINVAL, in
>   PRE_BRIDGE_FLAGS, and br_switchdev_set_port_flag shouts loudly.
>
> The problem is that we'd like to offload some port flags during bridge
> join and leave, but also not have the bridge shout at us if those fail.
> But on the other hand we'd like the user to know that we can't offload
> something when they set that through netlink. And since we can't have
> the driver return -EOPNOTSUPP or -EINVAL depending on whether it's
> called by the user or internally by the bridge, let's just add an extack
> argument to br_switchdev_set_port_flag and propagate it to its callers.
> Then, when we need offloading to really fail silently, this can simply
> be passed a NULL argument.
>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---

The build fails because since I started working on v2 and until I sent
it, Jakub merged net into net-next which contained this fix:
https://patchwork.kernel.org/project/netdevbpf/patch/20210207194733.1811529-1-olteanv@gmail.com/
for which I couldn't change prototype due to it missing in net-next.
I think I would like to rather wait to gather some feedback first before
respinning v3, if possible.
