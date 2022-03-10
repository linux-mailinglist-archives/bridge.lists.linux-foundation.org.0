Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D7B4D4CC8
	for <lists.bridge@lfdr.de>; Thu, 10 Mar 2022 16:34:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B0DE0403BF;
	Thu, 10 Mar 2022 15:34:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aPcS4JrWCN0Z; Thu, 10 Mar 2022 15:34:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 14EAC40364;
	Thu, 10 Mar 2022 15:33:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BFB28C0073;
	Thu, 10 Mar 2022 15:33:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 20D10C000B
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 15:33:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EF2EE8135E
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 15:33:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fFg4OxG-kTO2 for <bridge@lists.linux-foundation.org>;
 Thu, 10 Mar 2022 15:33:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 357E481337
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 15:33:57 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id yy13so12962362ejb.2
 for <bridge@lists.linux-foundation.org>; Thu, 10 Mar 2022 07:33:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ThJhg7Y6Zed5e0dNMLyGm4kfVIWPYT9T3lVpOytMe3c=;
 b=EABUOsH74nrjCWZ3rd8ZuNqM1VulsQ817y/y7YxvUqhpfJuzjYB2EQpSGzn6BR+EO0
 pjM/dm9dJLVHBXtNmKVKbyeOedrs+St7dxELgE62rEDT049uhCRMhHvwhDNk3KMKahJE
 ZCgmti7srzFV9ZlluZ8DQrfm+2T8jAV1h9KYIwAeL97r9f23I+ILkRLlmVnb/gqFCZDk
 vVMwXtijc4lCNQ6pZ011a/XALM2E+oY4zqzr7p7q8dVEDqUjZQOzTpABQhOVVRTA3cVw
 91d1JZIuuq7iOzQGVIG57bg6hXuRgH+Koto8Gcj5o1WwPyX4oaNP44VOBhop1klLfMYy
 QA4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ThJhg7Y6Zed5e0dNMLyGm4kfVIWPYT9T3lVpOytMe3c=;
 b=YwePvbt2293r1mGvHbRkaTxGhUW3v+zsWu62UhH2FHsc9eERLkvnjo18EmGQimDBKB
 MqcpgE9Celin7ozjgyDLpT5I5jeffkRkxCu+9Fj/TdjHmIX18ofi/8DxnJYabz1dPKOv
 Gi/nnYGbT20lcVYJEhTN1M6jrXVRw0RxOLZhBQqr0/s6pu2NkyB6HfIIVlfzcqBV+yos
 T/dH78zVK5cvIvfAvWaZbX5/p2gUE/wQSmjDLpbXs7BnJZuqKgzMf5DbpFR41+jRU+81
 jbJ8DKzMxlMlFMD3dzkEhyVFAxTVoU/h7bjm6UPr+tWgaP8/Gmz7G7F2Xs/Fb9uVeBmi
 LYfA==
X-Gm-Message-State: AOAM530Pf3DeymNSxYi3FrE8PCRViEtpQ679yU3FPGND4vOiwzsYp2Mf
 uOKr9VOACelyz9jkohy2ikw=
X-Google-Smtp-Source: ABdhPJx8Iw8MOc4J5cjsPoybwEFWcfZR4f2P+yj07EUWc5W0JxDPt4LapoCI1G0FWWgQflpE6+LsOw==
X-Received: by 2002:a17:907:3f0d:b0:6da:8413:9eb8 with SMTP id
 hq13-20020a1709073f0d00b006da84139eb8mr4743924ejc.280.1646926435326; 
 Thu, 10 Mar 2022 07:33:55 -0800 (PST)
Received: from skbuf ([188.25.231.156]) by smtp.gmail.com with ESMTPSA id
 m25-20020a170906161900b006d43be5b95fsm1932512ejd.118.2022.03.10.07.33.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 07:33:54 -0800 (PST)
Date: Thu, 10 Mar 2022 17:33:53 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Tobias Waldekranz <tobias@waldekranz.com>
Message-ID: <20220310153353.s6dejcapieltpqpu@skbuf>
References: <20220301100321.951175-1-tobias@waldekranz.com>
 <20220301100321.951175-11-tobias@waldekranz.com>
 <20220303222658.7ykn6grkkp6htm7a@skbuf>
 <87k0d1n8ko.fsf@waldekranz.com>
 <20220310152547.etuov6kpqotnyv2p@skbuf>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220310152547.etuov6kpqotnyv2p@skbuf>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Machata <petrm@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 netdev@vger.kernel.org, Cooper Lees <me@cooperlees.com>,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Matt Johnston <matt@codeconstruct.com.au>, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH v2 net-next 10/10] net: dsa: mv88e6xxx: MST
	Offloading
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

On Thu, Mar 10, 2022 at 05:25:47PM +0200, Vladimir Oltean wrote:
> > >> +	err = mv88e6xxx_sid_get(chip, attr->orig_dev, vattr->msti, &new_sid);
> > >> +	if (err)
> > >> +		goto unlock;
> > >> +
> > >> +	if (vlan.sid) {
> > >> +		err = mv88e6xxx_sid_put(chip, vlan.sid);
> > >> +		if (err)
> > >> +			goto unlock;
> > >> +	}
> > >> +
> > >> +	vlan.sid = new_sid;
> > >> +	err = mv88e6xxx_vtu_loadpurge(chip, &vlan);
> > >
> > > Maybe you could move mv88e6xxx_sid_put() after this succeeds?
> > 
> > Yep. Also made sure to avoid needless updates of the VTU entry if it
> > already belonged to the correct SID.
> 
> I realize I gave you conflicting advice here, first with inverting the
> refcount_inc() with the refcount_dec(), then with having fast handling
> of noop-changes to vlan.sid. I hope you're able to make some sense out
> of that and avoid the obvious issue with the refcount temporarily
> dropping to zero before going back to 1, which makes the sanity checker
> complain.

Oh wow... I didn't look at the code again, and commented based on a
false memory. Disregard, sorry. You aren't reversing sid_get with sid_put,
nor did I suggest that. There's a lot that happened just in my head,
apparently.
