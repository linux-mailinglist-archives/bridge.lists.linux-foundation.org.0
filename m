Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA39146E45
	for <lists.bridge@lfdr.de>; Thu, 23 Jan 2020 17:25:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B1D5F88402;
	Thu, 23 Jan 2020 16:25:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kb7qJV+W3cS7; Thu, 23 Jan 2020 16:25:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id D4DAE883E2;
	Thu, 23 Jan 2020 16:25:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BD514C1D83;
	Thu, 23 Jan 2020 16:25:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 33656C0174
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jan 2020 16:25:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1B9D32034D
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jan 2020 16:25:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qKYd06Nwv9+O for <bridge@lists.linux-foundation.org>;
 Thu, 23 Jan 2020 16:25:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 5E91120336
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jan 2020 16:25:51 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id x8so1616728pgk.8
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jan 2020 08:25:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Nzo/EeesMtT8+pXjBytb6EDMDl5fNWcRIsQYNOA5AM4=;
 b=ukIYTF+gazi+wlQK1oKO3hBUJnAA2/GAnOMr6rjauImDVUtVs13TmnqFcszfwIvxum
 2H9UJNP6bxlGVp2lAtCIudbc9GHBttcOC/fHI0O/DL1U58YEJz9Tv7zVqTMSnF8DeMhI
 rGlPPS193fEvweoLv+REyq8b3Akk53RKqnu7yPGi5m1iK5eTQQoE9rxONF8w8wIX5WFU
 izrafqIikmK1GSrThwopKSqB3JLifbuas2h+FShsn6ZLhl8oXxvWNb08JUBje7CF+e9H
 KUeHOm0Ts7tPCDvYmaWE7epq0F4dj2HkawR6uE0bNMRsEzvzoo+UVbKtif/UMrUEspzD
 B4WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Nzo/EeesMtT8+pXjBytb6EDMDl5fNWcRIsQYNOA5AM4=;
 b=gpSAxTW5vRE9UMFNpBq9hyS3iowiJkVf8xPluxSFmsjkTw8YR5ED3HkJU2XZuzIXGg
 /Ixw+dDYzcJk5A2bTTXkH6epUW+MTjUmbLc6Vm8Di2/d84jJRkzpLghG9Pmp7YZJ+qZR
 fjrTQwGCE5HHjr5qUI9Ho/DplWpmuWebDxom9JzG5ti3Qmfx/JohVSMW0lfwjXKmTlYa
 uyI/jFEMIx8MsaNwOgIqhHIA9knRMK8+q8ftyF9TZoGhiL4ur09Ra4lRGC6FoyGbRUOq
 PFa4bWzSXNM1HV5cbSLMUh3H1IwmtDNeZdmIqeoyVdoI6N3bbQX5LPdfCwbfb69nkcyd
 AFgA==
X-Gm-Message-State: APjAAAWtefrs7AxYqAXWJ0XMIwFfWmSceG6JGPMT0C1U8yTt57DdZkt5
 lOdmufzaXmh+s4/OEbcvH9V2Fg==
X-Google-Smtp-Source: APXvYqxBE5E5aAE8kGSPWh+QCn9YuDKN5TAb8vlzeOyxSF0QBXdHP7pmoIA2H2kLP/5tSC2X7SyxMA==
X-Received: by 2002:a63:e80d:: with SMTP id s13mr4906954pgh.134.1579796750921; 
 Thu, 23 Jan 2020 08:25:50 -0800 (PST)
Received: from hermes.lan (204-195-22-127.wavecable.com. [204.195.22.127])
 by smtp.gmail.com with ESMTPSA id bo19sm3329531pjb.25.2020.01.23.08.25.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2020 08:25:50 -0800 (PST)
Date: Thu, 23 Jan 2020 08:25:42 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20200123082542.06ed0a53@hermes.lan>
In-Reply-To: <20200123132807.613-2-nikolay@cumulusnetworks.com>
References: <20200123132807.613-1-nikolay@cumulusnetworks.com>
 <20200123132807.613-2-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 1/4] net: bridge: check port state
 before br_allowed_egress
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

On Thu, 23 Jan 2020 15:28:04 +0200
Nikolay Aleksandrov <nikolay@cumulusnetworks.com> wrote:

>  	return ((p->flags & BR_HAIRPIN_MODE) || skb->dev != p->dev) &&
> -		br_allowed_egress(vg, skb) && p->state == BR_STATE_FORWARDING &&
> +		p->state == BR_STATE_FORWARDING && br_allowed_egress(vg, skb) &&
>  		nbp_switchdev_allowed_egress(p, skb) &&
>  		!br_skb_isolated(p, skb);
>  }

Maybe break this complex return for readability?
